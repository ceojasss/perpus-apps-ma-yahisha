<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_Galeri'] = $this->M_Proses->getData('tb_galeri');
        $this->data['PageView'] = "site/pages/galeri/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
