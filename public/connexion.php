<?php
require_once '../config/database.php';
require_once '../functions/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    if (login($email, $password)) {
        header("Location: index.php");
        exit();
    } 
    else {
        $error = "Nom d'utilisateur ou mot de passe incorrect.";
    }
}

include '../includes/header.phtml';
include '../includes/connexion.phtml';
include '../includes/footer.phtml';
