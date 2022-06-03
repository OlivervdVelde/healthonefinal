<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    global $products, $reviews;
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
            <li class="breadcrumb-item"><a href="/categories/<?= $product->category_id ?>"><?= $product->category_name ?></a></li>
            <li class="breadcrumb-item" aria-current="page"><?= $product->name ?></li>
        </ol>
    </nav>
    <div class="row gy-3 ">
        <div class="col-sm-4 col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <a>
                        <img class="product-img img-responsive center-block" src='<?= "/img/$product->picture"?>'/>
                    </a>
                    <div class="card-title mb-3"><?= $product->name?></div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-md-8">
            <div class="text-center"><b><?= $product->name?></b></div>
            <div class="text-right "><?= $product->description?></div>
        </div>
    </div>
    
    <div class="row-mt-3">
        <div class="col-md-6">
            <?php foreach ($reviews as $review): ?>
                <div class="card">
                    <div class="card-header">
                        <?= $review->name ?> (<?php $date = date_create($review->date);
                        echo date_format($date, 'd-m-Y') ?>)
                    </div>
                    <div class="card-body">
                        <blockquote class="blockquote mb-0">
                            <p><?= $review->description ?></p>
                            <footer class="blockquote-footer"><?= $review->stars ?><cite title="Source Title">
                                Stars</cite></footer>
                        </blockquote>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="col-md-6 mt-sm-3 mt-md-0">
            <?php include_once(TEMPLATE_ROOT . "defaults/errorMessage.php"); ?>
            <?php include_once(TEMPLATE_ROOT . "defaults/successMessage.php"); ?>
            <div class="card p-3">
                <p class="lead">Geef je mening over dit sportapparaat</p>
                <form method="post">
                    <div class="mb-3">
                        <label for="name" class="form-control" id="name">
                            <?= isset($_SESSION['name']) ? $_SESSION['name'] : "Log in om een review te schrijven"?>
                        </label>
                    </div>
                    <div class="mb-3">
                        <label for="name2" class="col-form-label">
                            Review:
                        </label>
                        <textarea class="form-control" name="review" id="name2"></textarea>
                    </div>
                    <div class="mb-3">
                        <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Waardering:</label>
                        <select class="custom-select mr-sm-2" name="stars" id="inlineFormCustomSelect">
                            <option selected value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <button type="submit" name="addReview" class="btn-primary">Add Review</button>
                </form>
            </div>
        </div>    
    </div>

    <hr>
    <?php
    include_once('defaults/footer.php');

    ?>
</div>

</body>
</html>