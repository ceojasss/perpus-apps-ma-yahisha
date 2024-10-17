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
   <h1>DATA ALUMNI MA YAHISHA</h1>
</div>
</div>

<div id="pricing" class="section lb">
    <div class="container">
        <div class="section-title text-center">
            <h3>DATA ALUMNI
</h3>
        </div><!-- end title -->
        <div class="row">
            <div class="col-lg-12">
                <table id="table_id" class="table table-bordered table-striped" style="color: #101010;">
                <thead>
                  <tr>
                    <th scope="col" class="border-0">No</th>
                    <th scope="col" class="border-0">NIS</th>
                    <th scope="col" class="border-0">NAMA</th>
                    <th scope="col" class="border-0">JENIS KELAMIN</th>
                    <th scope="col" class="border-0">AGAMA</th>
                </tr>
            </thead>
            <tbody>
            <?php $i = 1;?>
            <?php foreach ($this->data['DT_Alumni'] as $data):?>
                <tr>
                    <td><?php echo $i;?></td>
                    <td><?php echo $data->nis_alumni;?></td>
                    <td><?php echo $data->nama_alumni;?></td>
                    <td><?php echo $data->jk_alumni;?></td>
                    <td><?php echo $data->nama_agama;?></td>
                </tr>
            <?php $i++;?>
            <?php endforeach;?>     
            </tbody>
    </table>
</div>
</div>
</div>

<hr class="invis">