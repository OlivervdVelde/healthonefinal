<!DOCTYPE html>
<html>
<?php
include_once(TEMPLATE_ROOT . "defaults/head.php")
?>

<body>

<div class="container">
    <?php
    include_once('../Templates/defaults/header.php');
    include_once('../Templates/defaults/menu.php');
    include_once('../Templates/defaults/pictures.php');
    global $name, $products;
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/admin/home">Home</a></li>
            <li class="breadcrumb-item" aria-current="page"><a href="/admin/products">Product Overview</a></li>
        </ol>
    </nav>

    <?php
        include_once(TEMPLATE_ROOT . 'defaults/errorMessage.php');
        include_once(TEMPLATE_ROOT . 'defaults/successMessage.php');
    ?>

    <div class="row gy-3 ">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Picture</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Edit</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($products as $product):?>
                    <tr>
                        <th scope="row"><?= $product->id ?></th>
                        <td><img src="/img/<?= $product->picture ?>" alt="<?= $product->name ?>" width="50" height="50"></td>
                        <td><?= $product->name ?></td>
                        <td><?= $product->category_name ?></td>
                        <td><a href="/admin/products/<?= $product->id ?>/delete" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                            </svg></a></td>
                    </tr>
                <?php endforeach;?>
            </tbody>
        </table>
    </div>

    <hr>
    <?php
    include_once('../Templates/defaults/footer.php');

    ?>
</div>
</body>
</html>