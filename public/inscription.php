<?php
require_once '../config/database.php';
require_once '../functions/auth.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if (register($username, $email, $password)) {
        header("Location: connexion.php");
        exit();
    } 
    else {
        $error = "Erreur lors de l'inscription. Veuillez changer le nom d'utilisateur.";
    }
}

include '../includes/header.phtml';
include '../includes/inscription.phtml';
include '../includes/footer.phtml';
