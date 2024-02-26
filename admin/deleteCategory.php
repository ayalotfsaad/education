<?php

include('./dbconnection.php');
$id=$_GET['id'];
$sql="DELETE FROM category WHERE category_id=$id";
$conn->exec($sql);
header("location:categories.php");
  exit();
?>