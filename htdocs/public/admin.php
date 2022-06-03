<?php

global $params;

// check if the user is an admin
if(isset($_SESSION['role']) && $_SESSION['role'] === 'admin'){
    if(isset($params[2])){
        switch ($params[2]) {
            case 'products':
                if(isset($_GET['product_id']) && isset($_GET['delete'])){
                    $productId = $_GET['product_id'];
                    $delete = $_GET['delete'];
                    if($delete){
                        $count = deleteProduct($productId);
                        if($count == 1){
                            $success['title'] = "Verwijdert!";
                            $success['message'] = "Succesvol verwijdert: #$productId.";
                        }else{
                            $error['title'] = "Niet Verwijdert!";
                            $error['message'] = "Het verwijderen van #$productId is niet gelukt.";
                        }
                    }
                }
                $products = getAllProducts();
                include_once TEMPLATE_ROOT . '/admin/products.php';
            break;
            
            default:
                include_once TEMPLATE_ROOT . "/admin/home.php";
            break;
        }
    }else{
        include_once TEMPLATE_ROOT . "/admin/home.php";
    }
    
} else{
    // if not admin
    header("Location: /");
}

