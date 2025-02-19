<?php
require_once '../config/database.php';
require_once '../functions/auth.php';

logout();

header('Location: connexion.php');
exit();
