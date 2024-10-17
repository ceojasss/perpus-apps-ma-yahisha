<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{

        $this->data['DT_Banner'] = $this->M_Proses->getData('tb_banner');
        $this->data['DT_VisiMisi'] = $this->M_Proses->getData('tb_visimisi');
        $this->data['DT_LihatBerita'] = $this->M_Proses->getData('tb_lihatberita');
        $this->data['DT_Prestasi'] = $this->M_Proses->getData('tb_prestasi');
        $this->data['DT_SaPraProfil'] = $this->M_Proses->getData('tb_sapraprofil');
        $this->data['PageView'] = "site/pages/index/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
