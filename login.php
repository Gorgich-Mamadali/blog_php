<?php 
error_reporting (E_ERROR | E_WARNING | E_PARSE);

session_start();
include 'databaes/db-connect.php';
if(isset($_POST['sub']))
{
    $email=$_POST['email'];
    $pass=$_POST['pass'];
    $insert=$conn->prepare("SELECT * FROM users WHERE email=? AND password=?");
    $insert->bindValue(1,$email);
    $insert->bindValue(2,$pass);
    $insert->execute();
    $users=$insert->fetchAll(PDO::FETCH_ASSOC);
    foreach($users as $user);

    if($insert->rowCount()>=1){
        $_SESSION['login']=true;
        $_SESSION['email']=$email;
        $_SESSION['name']=$user['name'];
        $_SESSION['id']=$user['id'];
        $_SESSION['roll']=$user['roll'];
        header("location:index.php");
    }
}
include 'header.php';
?>



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
    <h4>ورود به حساب کاربری</h4>
    <form method="post">
        <input name="email" type="email" placeholder="ایمیل خود را وارد کنید" class="form-control">
        <input name="pass" type="password" placeholder="رمز عبور را وارد کنید" class="form-control">
        <input name="sub" type="submit" value="ورود به حساب" class="form-control btn btn-info">
    </form>
    <a href="register.php">حساب کاربری ندارید؟</a>
    </div>
</div>
<?php include 'footer.php' ?>