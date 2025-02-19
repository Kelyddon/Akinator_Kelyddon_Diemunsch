<?php
require_once '../config/db.php';

function getFirstQuestion() {
    global $pdo;
    $stmt = $pdo->query("SELECT * FROM questions WHERE first_question = TRUE LIMIT 1");
    if ($stmt) {
        return $stmt->fetch(PDO::FETCH_ASSOC);
    } else {
        return false;
    }
}

function getNextQuestion($question_id, $answer) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM answer WHERE question_id = :question_id AND text = :answer LIMIT 1");
    if ($stmt->execute(['question_id' => $question_id, 'answer' => $answer])) {
        $answer = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($answer && $answer['next_question_id']) {
            $stmt = $pdo->prepare("SELECT * FROM questions WHERE id = :id LIMIT 1");
            if ($stmt->execute(['id' => $answer['next_question_id']])) {
                return $stmt->fetch(PDO::FETCH_ASSOC);
            } else {
                return false;
            }
        } else {
            return $answer ? $answer['result'] : false;
        }
    } else {
        return false;
    }
}
?>