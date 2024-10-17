<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_Sejarah'] = $this->M_Proses->getData('tb_sejarah');
        $this->data['DT_KepalaKomite'] = $this->M_Proses->getData('tb_kepalakomite');
        $this->data['DT_StrukturOrganisasi'] = $this->M_Proses->getData('tb_strukturorganisasi');
        $this->data['PageView'] = "site/pages/profil/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
