<?php
$id=$_GET['id'];
include '../databaes/db-connect.php';

$delete=$conn->prepare("DELETE FROM users WHERE id=?");
$delete->bindValue(1,$id);
$delete->execute();
header('location:users.php');

?>