<h2>Register</h2>

<?=form_open('auth/register')?>
  <label for="email">Email</label>
  <?=form_error('email')?>
  <input type="email" name="email" value="<?=set_value('email')?>"><br>

  <label for="password">Password</label>
  <?=form_error('password')?>
  <input type="password" name="password"><br>

  <label for="password_confirm">Password Confirmation</label>
  <?=form_error('password_confirm')?>
  <input type="password" name="password_confirm"><br>

  <input type="submit" name="submit" value="Register">
<?=form_close()?>
