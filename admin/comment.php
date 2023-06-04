<?php include '../jdf.php';
include '../databaes/db-connect.php';
$number=1;

$count=$conn->prepare("SELECT * FROM blogs");
$count->execute();
$blogs=$count->fetchAll(PDO::FETCH_ASSOC);
foreach($blogs as $blo)

$comment=$conn->prepare("SELECT * FROM comment WHERE post=?");
$comment->bindValue(1,$blo['id']);
$comment->execute();
$comments=$comment->fetchAll(PDO::FETCH_ASSOC);

?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>نمایش نظرات کاربران</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <?php include 'header.php'?>
    <div class="container">
        <h1 class="welcom-text">نمایش نظرات کاربران</h1>
        <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">نام کاربر</th>
      <th scope="col">نظر</th>
      <th scope="col">پست</th>
      <th scope="col">عملیات</th>
    </tr>
  </thead>
  <?php foreach ($comments as $co): 
        foreach($blogs as $blog):
    ?>
  <tbody>
    <tr>
      <th scope="row"><?= $number++?></th>
      <td><?= $co['user_id'] ?></td>
      <td><?= $co['text'] ?></td>
      <td><?= $blog['title'] ?></td>
      <td><a href="deleat_comment.php?id=<?= $co['id'];?>" class="btn btn-danger">حذف</a></td>

    </tr>
  </tbody>
  <?php endforeach; endforeach;?>
</table>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>