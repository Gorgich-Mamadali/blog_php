
<?php
error_reporting (E_ERROR | E_WARNING | E_PARSE);
session_start()?>
<nav class="navbar navbar-expand-lg navbar-light bg-light my_card">
  <a class="navbar-brand" href="index.php"><img src="image/logo.png" alt="لوگو" height="80px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">خانه<span class="sr-only"></span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="all_blogs.php">مقالات</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">درباره ما</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">ارتباط با ما</a>
      </li>
        <?php if(!isset($_SESSION['login'])){ ?>
             <li class="nav-item">
             <a class="nav-link" href="register.php">ثبت نام</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="login.php">ورود</a>
           </li>
        <?php } else{ ?>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">خروج</a>
        
      </li>
      <li class="nav-item">
        <?php if($_SESSION['roll']==2){ ?><a class="nav-link" href="admin/index.php">پنل ادمین</a><?php }?>        
      </li>
      
      <?php } ?>
    </ul>
  </div>
</nav>
