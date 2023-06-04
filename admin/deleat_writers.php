<?php
include '../databaes/db-connect.php';
$id=$_GET['id'];
$delete=$conn->prepare("DELETE FROM writers WHERE id=?");
$delete->bindValue(1,$id);
$delete->execute();
header('location:writers.php');
?>