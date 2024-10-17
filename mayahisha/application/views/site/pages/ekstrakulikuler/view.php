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
   <h1>Ekstrakulikuler MA Yahisha</h1>
</div>
</div>

<div class="container">
  <hr class="mt-2 mb-5">

  <div class="row text-center text-lg-left">
    <?php foreach ($this->data['DT_Ekskul'] as $key):?>
    <div class="col-lg-3 col-md-4 col-6">
      <a href="#">
            <img class="img-fluid img-thumbnail" src="<?php echo base_url('../yahisha/assets/images/'.$key->foto); ?>" alt="" style="width: 300px; height: 300px;">
          </a>
    </div>
    <?php endforeach;?>
  </div>

</div>