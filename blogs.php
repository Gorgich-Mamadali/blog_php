<?php
error_reporting (E_ERROR | E_WARNING | E_PARSE);
session_start();
$id=$_GET['id'];
include 'databaes/db-connect.php';
$select_blog=$conn->prepare("SELECT * FROM blogs WHERE id=?");
$select_blog->bindValue(1,$id);
$select_blog->execute();
$blogs=$select_blog->fetchAll(PDO::FETCH_ASSOC);

$view=$conn->prepare("INSERT INTO views SET post_id=?");
$view->bindValue(1,$id);
$view->execute();
$views=$view->fetchAll(PDO::FETCH_ASSOC);

if(isset($_POST['submit'])){
  $user_id=$_SESSION['name'];
  $text=$_POST['editor1'];
  $comment=$conn->prepare("INSERT INTO comment SET post=? , user_id=? , text=?");
  $comment->bindValue(1,$id);
  $comment->bindValue(2,$user_id);
  $comment->bindValue(3,$text);
  $comment->execute();
}

$select=$conn->prepare("SELECT * FROM comment WHERE post=?");
$select->bindValue(1,$id);
$select->execute();
$comment=$select->fetchAll(PDO::FETCH_ASSOC);
foreach($blogs as $b);
$rowcomment=$conn->prepare("SELECT COUNT(*) FROM comment WHERE post=?");
$rowcomment->bindValue(1,$id);
$rowcomment->execute();
$count=$rowcomment->fetchColumn();
$tags=explode(',' , $b['tags']);

$writer=$conn->prepare("SELECT * FROM users WHERE id=?");
$writer->bindValue(1,$b['writer']);
$writer->execute();
$writers=$writer->fetchAll(PDO::FETCH_ASSOC);

?>

<html lang="en" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>طرز تهیه کیک توت فرنگی خوشمزه</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    
  <?php include 'header.php' ?>

    <div class="container">
      <?php foreach($blogs as $blog_info): ?>
      <div class="col-12 col-lg-12">
      <div class="blog">
        <h1><?= $blog_info['title']?></h1>
        <div class="writer">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
        <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
        </svg>
          <span>
          <?php foreach ($writers as $wr): ?>
            <?= $wr['name'] ?>
              <?php endforeach; ?>

                - <?= $blog_info['date'] ?>
          </span>
          <div class="comment">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
          <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
          </svg>
            <span><?=  $count;  ?></span>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
            </svg>
             <span>خواندن این مقاله <?= $blog_info['readtime'] ?> دقیقه زمان میبرد</span>
        </div>
        </div>
        
        <img src="<?= $blog_info['image'] ?>" alt="image" width="100%" height="450px">
        <span>
        <?= $blog_info['caption'] ?>
        </span>
        <?php endforeach; ?>
        <br>
        <p id="p-tags">برچسب ها</p>
        
        <div class="tags">
        <?php foreach($tags as $tags):?>
          <a href="#"><?= $tags ?></a>
        <?php endforeach;?>
        </div>
      </div>
      </div>

        <div class="col-12 col-lg-12">
          <div class="writer-info my_card">
          <?php foreach ($writers as $wr): ?>
            <a href="">نویسنده : <?= $wr['name'] ?></a>
              <?php endforeach; ?>
          </div>
      </div>
      
      <div class="col-12 col-lg-12">
        <div class="comment-site">
          <h5>دیدگاهتان را بنویسید</h5>
          <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
          <?php if(isset($_SESSION['login'])){ ?>
          <form action="" method="post">
          <textarea name="editor1" id="editor1" rows="10" cols="80"></textarea>
            <script>
                // Replace the <textarea id="editor1"> with a CKEditor 4
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            <input style="margin-top: 40px; margin-bottom: 20px;"type="submit" name="submit" class="btn btn-success" value="ثبت دیدگاه">
          </form>
          <?php } else{ ?>
            <a href="login.php" style="color:brown">برای ثبت نظر لطفا وارد شوید</a>
            <?php }?>
            <?php foreach($comment as $comm) { ?>
            <div class="user-comment">
            <p>
              <?= $comm['user_id'] ?>
            </p>
            <span><?= $comm['text'] ?></span>
          </div>
            <?php } ?>
        </div>
      </div>
    </div>
  </div>
<?php include 'footer.php' ?>