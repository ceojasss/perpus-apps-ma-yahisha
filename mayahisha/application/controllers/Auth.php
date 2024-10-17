<?php
class Auth extends CI_Controller{
         
    public $data = array(

        "JudulWebsite" => "MA - Yahisha",
        "PageView" => "",
        "UrlTemplates" => "auth/template"
        
    );

    
    public function __construct(){
        parent::__construct();
        $this->load->model('M_Proses');
        $this->load->library('form_validation');

    }

    public function index(){
        $this->data['title'] = 'Login &rsaquo; Yahisha';
        $this->data['PageView'] = "auth/pages/login";
        $this->load->view($this->data['UrlTemplates'] , $this->data);
    }
                                                                               
    public function aksi_login(){
        
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $where = array(
            'email' => $email,
            'password' => md5($password)
        );

        $cek = $this->M_Proses->cek_login("user" , $where)->num_rows();
        // check 
        if($cek > 0){
            // pengambilan data
            $where = array('email' => $email, 'password' => md5($password));
            $data = $this->M_Proses->getDataById('user', $where);

            if(!empty($data)){
                foreach ($data as $datauser) {
                    $id_user = $datauser->id_user;
                }

                $dataarray = array('ID_SESSION' => $id_user,
                                   'LOGIN_SESSION' => TRUE);

                // pembuatan session
                $this->session->set_userdata($dataarray);
                redirect (base_url());
                // var_dump($this->session->userdata());
            }else{
                echo "<script>
                alert('Maaf, Terjadi kesalahan. Coba beberapa saat lagi');
                window.location=('". base_url('index.php/Auth') ."');
                 </script>";
            }
          
        }else{
            echo "<script>
            alert('Maaf, email/Password salah!');
            window.location=('". base_url('index.php/Auth') ."');
             </script>";
        }
    }


    public function register(){
        $this->form_validation->set_rules('nama' , 'Name' , 'required|trim',
        [
            'required' => 'Nama lengkap wajib di isi'
        ]
        );
        $this->form_validation->set_rules('email' , 'Email' , 'required|trim|valid_email|is_unique[user.email]' ,
        [
            'is_unique' => 'Email sudah terdaftar!',
            'required' => 'Email wajib di isi',
            'valid_email' => 'Format email salah, silahkah cek kembali email anda'
        ]
        );
        $this->form_validation->set_rules('password1' , 'Password' , 'required|trim|min_length[3]|matches[password2]',
        [
            'matches'=> "Password tidak sama",
            'min_length' => "Password terlalu pendek"
        ]
        );
        $this->form_validation->set_rules('password2' , 'Password' , 'required|trim|matches[password1]');

        if($this->form_validation->run() == false){
            $data['title'] = "Registrasi &rsaquo; Yahisha";
            $this->load->view('auth/config/auth_header' , $data);
            $this->load->view('auth/pages/register');
            $this->load->view('auth/config/auth_footer'); 
        }else{
            $data = array(
                'nama' => htmlspecialchars($this->input->post('nama' , true)),
                'email' => htmlspecialchars($this->input->post('email' , true)),
                'foto_admin' => 'default.jpg',
                'password' => md5($this->input->post('password1')),
                'role_id' => 2,
                'is_active' => 1,
                'date_created' =>time()
            );

            $this->M_Proses->insertData('user', $data);
            $this->session->set_flashdata('message' , '<div class="alert alert-success" role="alert">
            <strong>Selamat!</strong> Akun anda berhasil di buat. Silahkan cek email anda dan segera aktivasi.</div>');            
            redirect('Auth');
        }
        
    }

    public function aksi_logout(){
        $this->session->unset_userdata($data_session);
        $this->session->sess_destroy($data_session);
        redirect('Auth');
    }
}


?>