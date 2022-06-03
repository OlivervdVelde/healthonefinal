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
        include_once('defaults/errorMessage.php');
    ?>
    <form method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class ="form-label">Email Address</label>
            <input type="text" class="form-control" name="email" id="exampleInputEmail1">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        </div>

        <button type="submit" name="login" class="btn-primary">Submit</button>
    </form>
    <hr>
    <?php
    include_once('defaults/footer.php');
    ?>
</div>
    </body>
</html>