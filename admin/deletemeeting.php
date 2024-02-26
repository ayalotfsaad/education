<?php

include('./dbconnection.php');
$id=$_GET['id'];
$sql="DELETE FROM  meetings WHERE meetings_id =$id";
$conn->exec($sql);

header("location:meetings.php");
  exit();
?>