<?php
try {
    $pdo= new PDO('mysql:host=db.3wa.io;port=3306;dbname=kelyddondiemunsch_Akinator;charset=utf8', 'kelyddondiemunsch', '5721e53e81737dcfcce9389af64949e4');
    $pdo-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch (PDOExeption $e){
    die("Connection failed;" . $e->getMessage());
}
