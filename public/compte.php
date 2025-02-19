<?php
require_once '../config/database.php';
require_once '../functions/auth.php';

if (!isLoggedIn()) {
    header("Location: connexion.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['delete_account'])) {
        // Supprimer les parties associées au compte
        $log = $pdo->prepare("DELETE FROM parties WHERE user_id = :id");
        $log->execute(['id' => $_SESSION['user_id']]);

        // Supprimer le compte
        $log = $pdo->prepare("DELETE FROM users WHERE id = :id");
        $log->execute(['id' => $_SESSION['user_id']]);
        logout();
        header("Location: index.php");
        exit();
    } 
    elseif (isset($_POST['update_password'])) {
        // Mettre à jour le mot de passe du compte
        $new_password = password_hash($_POST['new_password'], PASSWORD_BCRYPT);
        $log = $pdo->prepare("UPDATE users SET password = :password WHERE id = :id");
        $log->execute(['password' => $new_password, 'id' => $_SESSION['user_id']]);
        $message = "Mot de passe mis à jour.";
    }
}

// Récupérer l'historique des parties
$log = $pdo->prepare("SELECT * FROM parties WHERE user_id = :user_id ORDER BY date DESC");
$log->execute(['user_id' => $_SESSION['user_id']]);
$parties = $log->fetchAll(PDO::FETCH_ASSOC);

include '../includes/header.phtml';
include '../includes/compte.phtml';
include '../includes/footer.phtml';
