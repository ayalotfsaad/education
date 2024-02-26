<?php
$db_server = "localhost";
$user_name = "root";
$password = "";
$db ="education";


try {
    $conn = new PDO(
    "mysql:host=$db_server;dbname=$db",
    $user_name,
    $password
);


    $conn->setAttribute(
        PDO::ATTR_ERRMODE,
        PDO::ERRMODE_EXCEPTION
    );


 

    } catch(PDOException $e) {
    echo "connection failed:" . $e->getMessage();
    }
   
?>