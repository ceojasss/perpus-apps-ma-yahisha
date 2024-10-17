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
		<div class="col-xs-7  col-sm-7  col-md-7  col-lg-7 ">
			<ul class="nav navbar-nav">
				<li><a href="<?php echo base_url();?>">Beranda</a></li>
				<li><a href="index.php/Profil">Profil</a></li>
				<li><a href="index.php/Guru">Guru</a></li>
				<li><a href="index.php/Alumni">Alumni</a></li>
				<li><a href="index.php/Berita">Berita</a></li>
				<li><a href="index.php/Galeri">Galeri</a></li>
				<li><a href="index.php/Ekstrakulikuler">Ekstrakurikuler</a></li>
			</ul>
		</div>
		<div class="col-xs-5  col-sm-5  col-md-5  col-lg-5 ">
			<ul class="nav navbar-nav">					
				<li>
					<a href="../<?php echo 'yahisha/';?>" class="btn btn-lg btn-primary" style="margin-left: 400px;">Login</a>
				</li>
			</ul>
		</div>
	  </div>
	    
      </div>
    </div>
  </nav>
</header>

<div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
			<li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div id="home" class="first-section" style="background-image:url('<?php echo base_url('assets/images/banner2.jpg'); ?>'); no-repeat; background-size: cover;">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<img src="<?php echo base_url('assets/images/logo.png'); ?>" width="10%" height="10%" alt="image">
									<h2 data-animation="animated zoomInRight">MADRASAH <strong>MA YAHISHA</strong></h2>
									<a data-scroll href="#overviews" class="btn btn-light btn-radius btn-brd effect-1 slide-btn" data-animation="animated fadeInRight" style="margin-top: 50px;">Read More</a>
								</div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section" style="background-image:url('<?php echo base_url('assets/images/banner1.jpg'); ?>'); no-repeat; background-size: cover;">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<img src="<?php echo base_url('assets/images/logo.png'); ?>" width="10%" height="10%" alt="image">
									<h2 data-animation="animated zoomInRight">MADRASAH <strong>MA YAHISHA</strong></h2>
									<a data-scroll href="#overviews" class="btn btn-light btn-radius btn-brd effect-1 slide-btn" data-animation="animated fadeInRight" style="margin-top: 50px;">Read More</a>
								</div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			<div class="item">
				<div id="home" class="first-section" style="background-image:url('<?php echo base_url('assets/images/banner3.jpg'); ?>'); no-repeat; background-size: cover;">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 text-center">
								<div class="big-tagline">
									<img src="<?php echo base_url('assets/images/logo.png'); ?>" width="10%" height="10%" alt="image">
									<h2 data-animation="animated zoomInRight">MADRASAH <strong>MA YAHISHA</strong></h2>
									<a data-scroll href="#overviews" class="btn btn-light btn-radius btn-brd effect-1 slide-btn" data-animation="animated fadeInRight" style="margin-top: 50px;">Read More</a>
								</div>
							</div>
						</div><!-- end row -->            
					</div><!-- end container -->
				</div><!-- end section -->
			</div>
			
			<!-- Left Control -->
			<a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	

	<div id="overviews" class="section wb">
	<div class="container">
		<div class="row"> 
			<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3>VISI DAN MISI</h3>
				</div>
			</div><!-- end title -->
			<div class="row" style="text-align: justify;">
			<?php foreach ($this->data['DT_VisiMisi'] as $key):?>
				<div class="col-lg-6">
					<h2>VISI</h2>
					<p style="padding-bottom: 5%; font-size: 0.5cm;"><?php echo $key->visi;?></p>
				</div>
				<div class="col-lg-6">
					<h2>MISI</h2>
					<p style=" font-size: 0.5cm;"><?php echo $key->misi;?></p>
				</div>
			<?php endforeach;?>
			</div>
		</div>

	</div>
			
	</div> <!-- Div row -->
<hr class="invis"> 
<div id="pricing" class="section lb">
	<div class="container">
		<div class="section-title text-center">
			<h3>Prestasi Yahisha</h3>

		</div><!-- end title -->
		<div class="row">
		<?php foreach ($this->data['DT_Prestasi'] as $key):?>
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="<?php echo base_url('admin/assets/images/'.$key->foto); ?>" target="_blank">
						<img src="<?php echo base_url('admin/assets/images/'.$key->foto); ?>" alt="Lights" style="width:100%">
						<div class="caption">
							<p><?php echo $key->nama_prestasi;?></p>
						</div>
					</a>
				</div>
			</div>
		<?php endforeach;?>
		</div>
	</div>
</div>

	<div id="hosting" class="section wb" style="background: rgb(248, 248, 248)">
		<div class="container">
			<div class="section-title text-center">
				<h3>Berita Terkini</h3>
			</div><!-- end title -->

			<div class="row dev-list text-center">
			<?php foreach ($this->data['DT_LihatBerita'] as $key):?>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
				
					<div class="widget clearfix">
						<img src="<?php echo base_url('admin/assets/images/'.$key->foto); ?>" alt="" class="img-responsive">
						<div class="widget-title">
							<h3><?php echo $key->nama_lihatberita;?></h3>
						</div>
						<!-- end title -->
						<p><?php echo substr($key->keterangan_lihatberita, 0, 100);?>...</p>

						<hr> 

						

						<hr>

						<a href="<?php echo base_url('index.php/LihatBerita');?>?id=<?php echo $key->id_lihatberita;?>" data-scroll class="btn btn-light grd1 effect-1 btn-radius btn-brd">Lihat Selengkapnya</a>

					</div><!--widget -->
					
				</div><!-- end col -->
				<?php endforeach;?>
				
			</div><!-- end row -->
		</div><!-- end container -->
	

	<?php //echo base_url('admin/assets/images/'.$key->foto); ?>

<div id="overviews" class="section wb">
	<div class="container">
		<div class="section-title row ">
			<div class="col-md-8 col-md-offset-2" style="margin-bottom: 20px;">
				<h3>Fasilitas Madrasah Aliyah (MA) YAHISHA</h3>
			</div>
			
			<div class="row ">
			<?php foreach ($this->data['DT_SaPraProfil'] as $key):?>
				<div class="col-lg-6">
					<div class="blog_image"><img src="<?php echo base_url('admin/assets/images/'.$key->foto); ?>" alt="" width="90%;" height="400px;" ></div>
					<p><i class="fa fa-check text-primary" style="margin-bottom:20px;"></i><?php echo $key->nama_sapraprofil; ?></p>
				</div>
			<?php endforeach; ?>
			</div>
			
		</div>
	</div>
</div>
<hr class="invis"> 