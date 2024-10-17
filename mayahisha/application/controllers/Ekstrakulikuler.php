<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ekstrakulikuler extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_Ekskul'] = $this->M_Proses->getData('tb_ekskul');
        $this->data['PageView'] = "site/pages/ekstrakulikuler/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
