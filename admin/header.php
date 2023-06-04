<?php
error_reporting (E_ERROR | E_WARNING | E_PARSE);
session_start();
if($_SESSION['roll']!=2){
 header('location:../index.php');
}
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light my_card">
  <a class="navbar-brand" href="../index.php"><img src="../image/logo.png" alt="لوگو " height="80px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">خانه<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          مقالات
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="addblog.php">افزودن مقاله</a>
          <a class="dropdown-item" href="blogs.php">مشاهده مقالات</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          نویسندگان
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="addwriter.php">افزودن نویسنده</a>
          <a class="dropdown-item" href="writers.php">مشاهده نویسنده گان</a>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="users.php">کاربران</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="comment.php">نظرات</a>
      </li> 
    </ul>
  </div>
</nav>