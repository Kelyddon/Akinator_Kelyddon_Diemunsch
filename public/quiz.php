<?php
require_once '../functions/auth.php';
require_once '../functions/quiz.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['current_question'])) {
    $_SESSION['current_question'] = getFirstQuestion();
    if (!$_SESSION['current_question']) {
        echo "<p>Erreur: Impossible de récupérer la première question.</p>";
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $answer = $_POST['answer'];
    $next = getNextQuestion($_SESSION['current_question']['id'], $answer);

    if ($next && is_array($next)) {
        $_SESSION['current_question'] = $next;
    } 
    else {
        $result = $next['resultat'] ?? $next;
        $image = $next['image_url'] ?? '';
        
        if ($result) {
            // Sauvegarder la partie
            $log = $pdo->prepare("INSERT INTO parties (user_id, date, result) VALUES (:user_id, NOW(), :result)");
            $log->execute(['user_id' => $_SESSION['user_id'], 'result' => $result]);
            $_SESSION['current_question'] = null;
            header("Location: resultat.php?result=" . urlencode($result) . "&image=" . urlencode($image));
            exit();
        }
        else {
            echo "<p>Erreur: Impossible de récupérer la question suivante ou le résultat.</p>";
            exit();
        }
    }
}

$question = $_SESSION['current_question'];

include '../includes/header.phtml';
include '../includes/quiz.phtml';
include '../includes/footer.phtml';
