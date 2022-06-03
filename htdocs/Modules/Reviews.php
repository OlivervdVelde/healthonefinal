<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getReviews(int $reviewId)
{
    global $pdo;

    $sth = $pdo->prepare("SELECT users.first_name AS name, review.description, review.date, review.stars, review.product_id
                            FROM review LEFT JOIN users ON review.user_id = users.id
                            WHERE product_id = ? ORDER BY 'date' DESC");
    $sth->bindParam(1, $id);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,"Review");
}

function saveReview(int $userId, string $review, string $stars, int $productId): void 
{
    global $pdo;
    $sth = $pdo->prepare('INSERT INTO review ( description, stars, product_id, user_id) VALUES (?, ?, ?, ?)');
    $sth->bindParam(1, $review);
    $sth->bindParam(2, $stars);
    $sth->bindParam(3, $productId);
    $sth->bindParam(4, $userId);
    $sth->execute();
}