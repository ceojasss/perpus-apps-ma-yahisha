<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Guru extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_Guru'] = $this->M_Proses->getQuery('SELECT  tb_guru.id_guru, 
                                                                        tb_guru.nip , 
                                                                        tb_guru.nama_guru ,
                                                                        tb_guru.jk ,  
                                                                        tb_mapel.id_mapel, 
                                                                        tb_mapel.mapel,
                                                                        tb_tugasguru.id_tugasguru, 
                                                                        tb_tugasguru.tugasguru
                                                                FROM `tb_guru` 
                                                                JOIN tb_mapel ON tb_guru.id_mapel = tb_mapel.id_mapel
                                                                JOIN tb_tugasguru ON tb_guru.id_tugasguru = tb_tugasguru.id_tugasguru'
                                                               );
        $this->data['DT_Kalender'] = $this->M_Proses->getData('tb_kalender');
        $this->data['PageView'] = "site/pages/guru/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
