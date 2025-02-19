<?php
require_once '../functions/auth.php';
logout();
header("Location: index.php");
exit();
