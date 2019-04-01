<h2>Login</h2>

<?=form_open('login')?>
  <label for="email">Email</label>
  <?=form_error('email')?>
  <input type="email" name="email" value="<?=set_value('email')?>"><br>

  <label for="password">Password</label>
  <?=form_error('password')?>
  <input type="password" name="password"><br>

  <input type="submit" name="submit" value="Login">
<?=form_close()?>
