<?php

include '../databaes/db-connect.php';

if(isset($_POST['sub']))
{
    $uname=$_POST['username'];
    $bio=$_POST['bio'];
    $image=$_POST['image'];
    $insert=$conn->prepare("INSERT INTO  writers SET username=? , bio=? , image=?");
    $insert->bindValue(1,$uname);
    $insert->bindvalue(2,$bio);
    $insert->bindvalue(3,$image);
    $insert->execute();
    header('location:writers.php');
}
?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>افزودن نویسنده</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <style>
        input,select{
            margin: 10px 0px;
        }
    </style>
</head>
<body>
    <?php include 'header.php'?>
    <div class="container">
        <h1 class="welcom-text">بخش افزودن نویسنده</h1>
        <form action="" method="post">
            <input name="username" type="text" placeholder="نام نویسنده" class="form-control">
            <input name="bio" type="text" placeholder="بیوگرافی نویسنده" class="form-control">
            <input name="image" type="text" placeholder="لینک تصویر پروفایل" class="form-control">
            <input name="sub" type="submit" class="btn-success form-control" value="افزودن نویسنده" style="background-color: #10c000;">
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>