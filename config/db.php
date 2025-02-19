<?php
$host = 'db.3wa.io';
$dbname = 'kelyddondiemunsch_test_akinator_fonctionnel';
$username = 'kelyddondiemunsch';
$password = '5721e53e81737dcfcce9389af64949e4';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}