<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getProducts(int $categoryId)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM product WHERE category_id=?');
    $sth->bindParam(1, $categoryId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS, 'Product');
}

function getProduct(int $productId)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT product.id, product.name, product.picture, product.description, product.category_id, category.name AS category_name
                            FROM product
                            LEFT JOIN category
                            ON product.category_id = category.id
                            WHERE product.id = ?');
    $sth->bindParam(1, $productId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS, 'Product')[0];
}

function getAllProducts():array
{
    global $pdo;
    $sth = $pdo->prepare('SELECT product.id, product.name, product.picture, product.description, product.category_id, category.name AS category_name
                            FROM product
                            LEFT JOIN category
                            ON product.category_id = category.id ORDER BY category_id');
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS, 'Product');
}

function deleteProduct(int $id) :int {
    global $pdo;
    $sth = $pdo->prepare('DELETE FROM product WHERE id = ?');
    $sth->bindParam(1, $id);
    $sth->execute();
    return $sth->rowCount();
}