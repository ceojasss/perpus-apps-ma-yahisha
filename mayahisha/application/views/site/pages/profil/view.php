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

<div class="all-title-box" style="background: url(<?php echo base_url('../yahisha/assets/images/uploads/banner.jpg'); ?>); no-repeat;">
  <div class="container text-center">
   <h1>Profil Madrasah Aliyah (MA) YAHISHA<span class="m_1"></span></h1>
 </div>
</div>

<div id="overviews" class="section wb">
  <div class="container">
    <div class="section-title row text-center">

      <div class="col-md-8 col-md-offset-2">

        <h3>Sejarah</h3>
        <img src="<?php echo base_url('../yahisha/assets/images/yahisa.jpg'); ?>" style="border-radius: 2%; padding-bottom: 5%;
        width: 100%;" class="rounded" alt="...">
        <div class="text-center">

        </div>
        <?php foreach ($this->data['DT_Sejarah'] as $key):?>
          <p class="lead" style="font-size: 0.5cm; text-align: justify;"><?php echo $key->penjelasan_sejarah;?></p>
        <?php endforeach;?>
      </div>
    </div><!-- end title -->
    <div id="pricing" class="section lb">
      <div class="container">
        <div class="section-title text-center">
          <h3>Kelapa Komite</h3>

        </div><!-- end title -->
        
        <div class="row">
        <?php foreach ($this->data['DT_KepalaKomite'] as $key):?>
          <div class="col-md-6">
            <div class="thumbnail">
              <a href="<?php echo base_url('../yahisha/assets/images/'.$key->foto); ?>" target="_blank">
                <img src="<?php echo base_url('../yahisha/assets/images/'.$key->foto); ?>" alt="Lights" style="width:100%">
                <div class="caption">
                  <p><?php echo $key->keterangan;?></p>
                </div>
              </a>
            </div>
          </div>
        <?php endforeach;?>
        </div>
        

      </div>
    </div>

  </div><!-- end container -->
</div><!-- end section -->
<div id="overviews" class="section wb">
  <div class="container">
    <div class="section-title row text-center">
      <div class="col-md-8 col-md-offset-2">
        <h3>Struktur Organisasi</h3>
      </div>
      <div class="row">
        <div class="col-lg-12">
        <?php foreach ($this->data['DT_StrukturOrganisasi'] as $key):?>
          <div class="blog_image"><img src="<?php echo base_url('../yahisha/assets/images/'.$key->gambar); ?>" alt="" width="100%;"></div>
        <?php endforeach;?>
        </div>
      </div>
    </div>
  </div>
</div>


</div><!-- end title -->


</div><!-- end container -->
</div><!-- end section -->