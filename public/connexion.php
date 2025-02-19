<?php
require_once '../functions/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (login($username, $password)) {
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
