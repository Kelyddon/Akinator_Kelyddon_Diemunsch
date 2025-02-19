<?php
require_once '../config/database.php';

function getFirstQuestion() {
    global $pdo;
    $log = $pdo -> query("SELECT * FROM questions WHERE first_question = TRUE LIMIT 1");
    
    if ($log) {
        return $log -> fetch(PDO::FETCH_ASSOC);
    } 
    else {
        return false;
    }
}

function getNextQuestion($question_id, $answer) {
    global $pdo;
    $log = $pdo -> prepare("SELECT * FROM answer WHERE question_id = :question_id AND text = :answer LIMIT 1");
    
    if ($log -> execute(['question_id' => $question_id, 'answer' => $answer])) {
        $answer = $log -> fetch(PDO::FETCH_ASSOC);
        
        if ($answer && $answer['next_question_id']) {
            $log = $pdo -> prepare("SELECT * FROM questions WHERE id = :id LIMIT 1");
            
            if ($log -> execute(['id' => $answer['next_question_id']])) {
                return $log -> fetch(PDO::FETCH_ASSOC);
            } 
            else {
                return false;
            }
        } 
        else {
            return $answer ? $answer['result'] : false;
        }
    } 
    else {
        return false;
    }
}
