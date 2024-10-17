
<?php $this->load->view('site/config/header');?>

     <?php 
        if(!empty($PageView)){
            $this->load->view($PageView);
        }
    ?> 

<?php $this->load->view('site/config/footer');?>

