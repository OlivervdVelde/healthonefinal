<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getCategories()
{
    global $pdo;

    $query=$pdo->prepare("SELECT * FROM category");
    $query->execute();

    $result=$query->fetchAll(PDO::FETCH_CLASS,"Category");

    return $result;
}

function getCategoryName(int $id)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM category WHERE id= ? ');
    $sth->bindParam(1, $id, PDO::PARAM_INT);
    $sth->setFetchMode(PDO::FETCH_CLASS, Category::class);
    $sth->execute();
    $category = $sth->fetch();
    return $category->name;
}
