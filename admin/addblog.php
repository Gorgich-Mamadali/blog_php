<?php include '../jdf.php';
include '../databaes/db-connect.php';
session_start();
if(isset($_POST['sub'])){
    $title=$_POST['title'];
    $caption=$_POST['editor1'];
    $writer=$_POST['writer'];
    $readTime=$_POST['time'];
    $imageLink=$_POST['image'];
    $tags=$_POST['tags'];
    $date=jdate('y/m/d');
    $insert=$conn->prepare("INSERT INTO blogs SET title=? , caption=? , writer=? , date=? , readtime=? , image=? , tags=?");
    $insert->bindValue(1,$title);
    $insert->bindValue(2,$caption);
    $insert->bindValue(3,$writer);
    $insert->bindValue(4,$date);
    $insert->bindValue(5,$readTime);
    $insert->bindValue(6,$imageLink);
    $insert->bindValue(7,$tags);
    $insert->execute();
    header('location:blogs.php');

}

?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>افزودن مقالات</title>
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
        <h1 class="welcom-text">بخش افزودن مقاله</h1>
        <form action="" method="post">
            <input name="title" type="text" placeholder="موضوع مقاله" class="form-control">
            <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
            <textarea name="editor1" id="editor1" rows="10" cols="80" placeholder="متن مقاله"></textarea>
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor 4
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            <select name="writer" class="form-control">
                <option value="<?php echo $_SESSION['id']?>"><?php echo $_SESSION['name']?></option>
                <input name="time" type="number" placeholder="زمان تقریبی مطالعه" class="form-control">
                <input name="image" type="text" placeholder="لینک تصویر" class="form-control">
                <input name="tags" type="text" placeholder="تگ ها" class="form-control">
                <input name="sub" type="submit" class="btn-success form-control" value="ثبت" style="background-color: #10c000;">
            </select>
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>