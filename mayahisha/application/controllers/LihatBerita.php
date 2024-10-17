<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LihatBerita extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['PageView'] = "site/pages/lihatberita/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
