<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('user_model');
  }

  public function register(){
    $this->form_validation->set_rules('email', 'Email', 'required|is_unique[users.email]');
    $this->form_validation->set_rules('password', 'Password', 'required');
    $this->form_validation->set_rules('password_confirm', 'Password Confirmation', 'required|matches[password]');

    if($this->form_validation->run() == FALSE){
      $this->load->view('layouts/header');
      $this->load->view('auth/register');
    }else{
      //save user
      $this->user_model->insert_user();

      //email verification
      $this->send_email_verification($this->input->post('email'), $_SESSION['token']);
      redirect('login');
      //redirect_user
    }
  }

  public function send_email_verification($email, $token){
    $base_url = base_url('verify/');
    $this->load->library('email');
    $this->email->from('mukhoiran@test.com', 'Muhammad Khoirul Anam');
    $this->email->to($email);
    $this->email->subject('Register user');
    $this->email->message("
        Klik for register Confirmation
        <a href='$base_url$email/$token'>Email Confirmation</a>
    ");
    $this->email->set_mailtype('html');
    $this->email->send();
  }

  public function verify_register($email, $token){
    $user = $this->user_model->get_user('email', $email);

    //check email exist
    if(!$user){
      die('Email not exist');
    }else{
      if($user['token'] !== $token){
        die('Token not match');
      } else {

        //update user role
        $this->user_model->update_role($user['id'], 1);

        //set session
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['logged_in'] = TRUE;

        //redirect profile
        redirect('news');
      }
    }
  }

}
