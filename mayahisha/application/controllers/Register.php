<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
        $this->load->library('form_validation');
    }

	public function index()
	{
        $this->form_validation->set_rules('nama' , 'Nama' , 'required|trim');
        $this->form_validation->set_rules('email' , 'Email' , 'required|trim|valid_email');

        if($this->form_validation->run() ==  true){
            
            echo "data berhasil";
        }else{
            $this->data['PageView'] = "auth/pages/register/view";
            $this->load->view($this->data['UrlTemplates'] , $this->data);
        }
    }
    
   
}
