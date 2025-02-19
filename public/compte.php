<?php
require_once '../functions/auth.php';

if (!isLoggedIn()) {
    header("Location: connexion.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['delete_account'])) {
        // Supprimer les parties associées
        $stmt = $pdo->prepare("DELETE FROM parties WHERE user_id = :id");
        $stmt->execute(['id' => $_SESSION['user_id']]);

        // Supprimer le compte
        $stmt = $pdo->prepare("DELETE FROM users WHERE id = :id");
        $stmt->execute(['id' => $_SESSION['user_id']]);
        logout();
        header("Location: index.php");
        exit();
    } elseif (isset($_POST['update_password'])) {
        // Mettre à jour le mot de passe
        $new_password = password_hash($_POST['new_password'], PASSWORD_BCRYPT);
        $stmt = $pdo->prepare("UPDATE users SET password = :password WHERE id = :id");
        $stmt->execute(['password' => $new_password, 'id' => $_SESSION['user_id']]);
        $message = "Mot de passe mis à jour.";
    }
}

// Récupérer l'historique des parties
$stmt = $pdo->prepare("SELECT * FROM parties WHERE user_id = :user_id ORDER BY date DESC");
$stmt->execute(['user_id' => $_SESSION['user_id']]);
$parties = $stmt->fetchAll(PDO::FETCH_ASSOC);

include '../includes/header.phtml';
include '../includes/navbar.phtml';
include '../includes/compte.phtml';
include '../includes/footer.phtml';
?>