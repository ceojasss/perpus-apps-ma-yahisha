<?php 
$id_lihatberita = $this->input->get('id');
$where = array('id_lihatberita' => $id_lihatberita);
$this->data['DT_LihatBerita'] = $this->M_Proses->getDataById('tb_lihatberita', $where);
?>
<header class="header header_style_01">
  <nav class="megamenu navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?php echo base_url();?>"><img src="../assets/images/logos/logoyahisha.png" alt="image"></a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
              <li><a href="<?php echo base_url();?>">Beranda</a></li>
              <li><a href="Profil">Profil </a></li>
              <li><a href="Guru">Guru</a></li>
              <li><a href="Alumni">Alumni</a></li>
              <li><a href="Berita">Berita</a></li>
              <li><a href="Galeri">Galeri</a></li>
              <li><a href="Ekstrakulikuler">Ekstrakurikuler</a></li>
          </ul>
      </div>
    </div>
  </nav>
</header>

<div class="all-title-box" style="background: url(<?php echo base_url('admin/assets/images/uploads/banner.jpg'); ?>); no-repeat;">
  <div class="container text-center">
   <h1>DETAIL BERITA</h1>
</div>
</div>


<div id="overviews" class="section wb">
  <div class="container">
    <?php foreach ($this->data['DT_LihatBerita'] as $data):?>
    <div class="section-title row text-center">
      <div class="col-md-8 col-md-offset-2">
        <h3><?php echo $data->nama_lihatberita;?></h3>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="blog_image"><img src="<?php echo base_url('admin/assets/images/'.$data->foto); ?>" alt="" width="50%;"></div>
          <p style="text-align: justify; font-size: 20px;"><?php echo $data->keterangan_lihatberita;?></p>
        </div>
      </div>
      </div>
    </div>
    <?php endforeach;?>
  </div>
</div>

</div><!-- end title -->

<hr class="invis"> 

<hr class="hr3"> 


</div><!-- end container -->
</div><!-- end section -->
