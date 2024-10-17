<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_LihatBerita'] = $this->M_Proses->getData('tb_lihatberita');
        $this->data['PageView'] = "site/pages/berita/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
