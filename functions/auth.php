<?php
require_once '../config/db.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

function isLoggedIn() {
    return isset($_SESSION['user_id']);
}

function login($username, $password) {
    global $pdo;
    $log = $pdo -> prepare("SELECT * FROM users WHERE username = :username");
    $log -> execute(['username' => $username]);
    $user = $log -> fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        return true;
    }
    return false;
}

function logout() {
    session_destroy();
}

function register($username, $email, $password) {
    global $pdo;
    $hashed_password = password_hash($password, PASSWORD_BCRYPT);
    $log = $pdo -> prepare("INSERT INTO users (username, email, password) VALUES (:username, :email, :password)");
    return $log -> execute(['username' => $username, 'email' => $email, 'password' => $hashed_password]);
}
