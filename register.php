<?php 
include 'databaes/db-connect.php';
if(isset($_POST['sub'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $pass=$_POST['pass'];
    $insert=$conn->prepare("INSERT INTO users SET name=? , email=? , password=?");
    $insert->bindValue(1,$name);
    $insert->bindValue(2,$email);
    $insert->bindValue(3,$pass);
    $insert->execute();
    header("location:login.php");

}

?>

<?php include 'header.php' ?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>وبلاگ</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <div class="register">
    <h4>ثبت نام کاربر جدید</h4>
    <form method="post">
        <input name="name" type="text" placeholder="نام و نام خانوادگی" class="form-control">
        <input name="email" type="email" placeholder="ایمیل خود را وارد کنید" class="form-control">
        <input name="pass" type="password" placeholder="رمز عبور را وارد کنید" class="form-control">
        <input name="sub" type="submit" value="ثبت نام" class="form-control btn btn-info">
    </form>
    <a href="login.php">حساب کاربری دارید؟</a>
    </div>
</div>
<?php include 'footer.php' ?>