
                                                               <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alumni extends MY_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
    }

	public function index()
	{
        $this->data['DT_Alumni'] = $this->M_Proses->getQuery('SELECT    tb_alumni.id_alumni, 
                                                                                    tb_alumni.nis_alumni,
                                                                                    tb_alumni.nama_alumni,
                                                                                    tb_alumni.jk_alumni,   
                                                                                    tb_agama.id_agama, 
                                                                                    tb_agama.nama_agama
                                                                            FROM `tb_alumni` 
                                                                            JOIN tb_agama ON tb_alumni.agama_id = tb_agama.id_agama'
                                                               );
        $this->data['PageView'] = "site/pages/alumni/view";
		$this->load->view($this->data['UrlTemplate'] , $this->data);
    }
    
   
}
