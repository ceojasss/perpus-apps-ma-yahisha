<?php 

class MY_Controller extends CI_Controller{

    public $data = array(

        "JudulWebsite" => "site",
        "PageView" => "",
        "UrlTemplate" => "site/templates",
        "UrlTemplates" => "auth/template",
        'TextEditor' => FALSE,
        'PicForbid' => 'empty_pic.png',
        'Folder' => 'assets/images/' 
        
    );

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    
        if($this->session->userdata('LOGIN_SESSION') == TRUE){
          $where = array('id_user' => $this->session->userdata('ID_SESSION'));
          $data = $this->M_Proses->getDataById('user', $where);
          if(!empty($data)){
            foreach ($data as $key) {
              // var_dump($key); die;
              $this->data['SESS_id_user'] = $key->id_user;
              $this->data['SESS_nama'] = $key->nama;
              $this->data['SESS_email'] = $key->email;
              $this->data['SESS_foto_admin'] = $key->foto_admin;
              $this->data['SESS_password'] = $key->password;
              $this->data['SESS_role_id'] = $key->role_id;
              $this->data['SESS_is_active'] = $key->is_active;
              $this->data['SESS_date_created'] = $key->date_created;
            }
          }
        }
      }
  

}