<?php include '../jdf.php';
include '../databaes/db-connect.php';
$id=$_GET['id'];
$select=$conn->prepare("SELECT * FROM writers WHERE id=?");
$select->bindvalue(1,$id);
$select->execute();
$writers=$select->fetchAll(PDO::FETCH_ASSOC);

if(isset($_POST['sub']))
{
    $uname=$_POST['name'];
    $bio=$_POST['editor1'];
    $image=$_POST['image'];
    $insert=$conn->prepare("UPDATE writers SET username=? , bio=? , image=?");
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
    <title>ویرایش اطلاعات نویسنده</title>
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
        <h1 id="welcom-text">ویرایش اطلاعات نویسنده</h1>
        <form action="" method="post">
            <?php foreach($writers as $writers_info): ?>
            <input name="name" type="text" placeholder="نام نویسنده" class="form-control" value="<?= $writers_info['username']?>">
            <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
            <textarea name="editor1" id="editor1" rows="10" cols="80"><?= $writers_info['bio']?></textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
            </script>
                <input name="image" type="text" placeholder="لینک تصویر پروفایل" class="form-control" value="<?= $writers_info['image']?>">
                <input name="sub" type="submit" class="btn-success form-control" value="ویرایش" style="background-color: #10c000;">
            <?php endforeach;?>
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>