<nav>
  <li><a href="<?=site_url('register')?>">Register</a></li>
  <?php if(isset($_SESSION['logged_in'])) { ?>
    <li><a href="<?=site_url('logout')?>">Logout</a></li>
  <?php } else { ?>
    <li><a href="<?=site_url('login')?>">Login</a></li>
  <?php } ?>
</nav>
