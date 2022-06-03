<?php

function checkLogin(string $email, string $password) {
    global $pdo;
    $sth = $pdo->prepare('SELECT id, email, first_name, last_name, role FROM users WHERE email= ? AND password = ?');
    $sth->bindParam(1, $email);
    $sth->bindParam(2, $password);
    $sth->setFetchMode(PDO::FETCH_CLASS, User::class);
    $sth->execute();
    return $sth->fetch();
}