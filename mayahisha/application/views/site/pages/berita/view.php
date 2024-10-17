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
   <h1>BERITA TERKINI</h1>
</div>
</div>
	
<div id="hosting" class="section wb" style="background: rgb(248, 248, 248)">
	<div class="container">
		<div class="section-title text-center">
			<h3>Berita Terkini</h3>
			<hr>
		</div><!-- end title -->

		<div class="row dev-list text-center">
		<?php foreach ($this->data['DT_LihatBerita'] as $key):?>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
			
				<div class="widget clearfix">
					<img src="<?php echo base_url('../yahisha/assets/images/'.$key->foto); ?> " alt="" class="img-responsive">
					<div class="widget-title">
						<h3><?php echo $key->nama_lihatberita;?></h3>
					</div>
					<!-- end title -->
					<p><?php echo substr($key->keterangan_lihatberita, 0, 100);?>...</p>
					<hr>

					<a href="<?php echo base_url('index.php/LihatBerita');?>?id=<?php echo $key->id_lihatberita;?>" data-scroll class="btn btn-light grd1 effect-1 btn-radius btn-brd">Lihat Selengkapnya</a>

				</div><!--widget -->
				
			</div><!-- end col -->
			<?php endforeach;?>
			
		</div><!-- end row -->
	</div><!-- end container -->
</div><!-- end section -->
</div>