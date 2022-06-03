<?php
global $success
?>
<?php if(isset($success)): ?>
    <div class="alert alert-success">
        <strong><?= $success['title'] ?></strong> <?= $success['message'] ?>
    </div>
<?php endif; ?>