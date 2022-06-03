<?php
require '../Modules/Categories.php';
require '../Modules/Products.php';
require '../Modules/Database.php';
require '../Modules/Reviews.php';
require '../Modules/users.php';

define("DOC_ROOT", realpath(dirname(__DIR__)));
define("TEMPLATE_ROOT", realpath(DOC_ROOT . "/Templates") . "/");

session_start();
//var_dump($_SESSION);
//var_dump($_POST);
$message="";

$request = $_SERVER['REQUEST_URI'];
$params = explode("/", $request);
$title = "HealthOne";
$titleSuffix = "";

switch ($params[1]) {
    case 'categories':
        $titleSuffix = ' | Categories';
            $categories = getCategories();
            include_once "../Templates/categories.php";
        break;

    case 'category':
        $titleSuffix = ' | Category';
        if (isset($_GET['id'])) {
            $categoryId = $_GET['id'];
            $products = getProducts($categoryId);
            $name = getCategoryName($categoryId);
            $categories = getCategories();
            include_once "../Templates/products.php";
        }else{
            $titleSuffix = ' | Home';
            include_once "../Templates/home.php";
        }
        break;

    case 'product':
        if (isset($_GET['id'])) {
            $productId = $_GET['id'];
            $product = getProduct($productId);
            $name = getCategoryName($product->category_id);
            $titleSuffix = ' | ' . $product->name;

            if (isset($_POST['addReview'])) {
                if(isset($_SESSION['id'])){
                    $review = filter_input(INPUT_POST, "review", FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $stars = filter_input(INPUT_POST, "stars", FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    if(!isset($stars) || $stars == false){
                        $error['title'] = "Fout!";
                        $error['message'] = "Er is iets fout gegaan.";
                    }else{
                        saveReview($_SESSION['id'], $review, $stars, $productId);
                        $success['title'] = "Bedankt!";
                        $success['message'] = "Uw review is toegevoegd.";
                    }
                }
                else{
                    $error['title'] = "Fout!";
                    $error['message'] = "Log in om een review te schrijven.";
                }
            }
            $reviews = getReviews($productId);
            include_once "../Templates/product.php";
        }else{
            $titleSuffix = ' | Home';
            include_once "../Templates/home.php";
        }
        break;

    case  'login':
        $titleSuffix = ' | Login';

        if (isset($_POST['login'])) {
            $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
            $password = filter_input(INPUT_POST, 'password');
            $user = checkLogin($email, $password);
            if($user == false){
                $error['title'] = "Incorrect!";
                $error['message'] = "verkeerde email of wachtwoord.";
            }else{
                $_SESSION['login'] = true;
                $_SESSION['role'] = $user->role;
                $_SESSION['email'] = $user->email;
                $_SESSION['name'] = "$user->first_name $user->last_name";
                $_SESSION['id'] = $user->id;
                if($user->role == 'admin')
                {
                    header("Location: /admin");
                    return;
                }
                header("Location: /home");
            }
        }

        include_once "../Templates/login.php";
        break;

    case  'logout':
        session_destroy();
        header("Location: /");
        break;

    case 'admin': 
        include_once 'admin.php';
        break;
    
    case  'contact':
        $titleSuffix = ' | Contact';
        include_once "../Templates/contact.php";
        break;

    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
}

function getTitle() {
    global $title, $titleSuffix;
    return $title . $titleSuffix;
}
