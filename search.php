
<?php 
include 'databaes/db-connect.php';
$q=$_GET['q'];
$select=$conn->prepare("SELECT * FROM blogs WHERE title LIKE '%$q%' ");
$select->execute();
$blogs=$select->fetchAll(PDO::FETCH_ASSOC);

if(isset($_POST['search'])){
  $title=$_POST['title'];
  header("location:search.php?q=".$title);
}



?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>جستجو</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <?php include 'header.php'?>
<div class="container">

<div class ="d-none d-lg-block">
<div class="search">
  <form method="post">
    <input type="text" name="title" placeholder="دنبال چی میگردی؟" class="form-control input my_card" value="<?= $q?>">
    <input type="submit" name="search" value="جستجو" class="btn-info sub my_card">
  </form>
  </div>
</div>

<div class ="d-block d-lg-none">
<div class="mobile-search">
  <form method="post">
    <input type="text" name="title" placeholder="دنبال چی میگردی؟" class="form-control mobile" value="<?= $q?>">
    <input type="submit" name="search" value="جستجو" class="btn-info sub">
  </form>
  </div>
</div>

<h4 id="title">نتیجه جستجوی شما</h4>
<div class="row">
<?php
  function limit_words($string, $word_limit)
  {
      $words = explode(" ",$string);
      return implode(" ",array_splice($words,0,$word_limit));
  }
  foreach($blogs as $blog):
  
    $comment=$conn->prepare("SELECT COUNT(*) FROM comment WHERE post=?");
    $comment->bindValue(1,$blog['id']);
    $comment->execute();
    $numrow=$comment->fetchColumn();

  ?>
  
<div class="col-12 col-lg-4">
<a href="blogs.php?id=<?= $blog['id']?>">
<div class="boxes">
<img src="<?= $blog['image']; ?>" width="100%" height="50%" alt="image" >
  <p><?= $blog['title']; ?></p>
<span><?php
$content = $blog['caption'];
echo limit_words($content,20)." ... "; ?></span>

<div class="co-view">
  <br>
    <span><?= $blog['date']?></span>
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
  <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>
<span><?= $numrow ?></span>
</div>
</div>
</a>
</div>
<?php endforeach;?>
</div>
</div>
<?php include 'footer.php' ?>