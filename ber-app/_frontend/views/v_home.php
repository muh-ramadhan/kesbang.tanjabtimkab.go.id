<!-- AWAL SEBUAH CERITA -->
<!DOCTYPE html>
<html lang="en">
<!-- DIMULAI DARI HEAD -->
<head>
    <!-- MULAI META TAGS -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- SELESAI META TAGS -->
    <!-- MULAI JUDUL WEB DAN ICO -->
    <link rel="icon" href="<?php echo base_url(); ?>style/_/img/favicon.png" type="image/png" />
    <title><?php echo $judulapp; ?></title>
    <!-- SELESAI JUDUL WEB DAN ICO -->
    <!-- MULAI GAYA WEB BAWAAN -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/bootstrap.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/vendors/linericon/style.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/vendors/nice-select/css/nice-select.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/vendors/animate-css/animate.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/vendors/jquery-ui/jquery-ui.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/style.css" />
    <link rel="stylesheet" href="<?php echo base_url(); ?>style/_/css/responsive.css" />
    <!-- SELESAI GAYA WEB BAWAAN -->
</head>
<!-- SELESAI DARI HEAD -->

<!-- MULAI BODY -->
<body>
    <!-- MULAI HEADER -->
    <?php $this->load->view($vheader); ?>
    <!-- SELESAI HEADER -->
    <!-- MULAI BANNER IKLAN -->
    <section class="home_banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                    <div class="banner_content d-flex flex-md-row flex-column">
<div class="banner-left text-md-right">
<img src="https://kesbang.tanjabtimkab.go.id/style/images/profile.jpg" alt="" class="img-fluid">
<center style="color: white; ">Abdul Rasid, SP, MH</center>
</div>
<div class="banner-right position-relative">

<h2 class="text-uppercase">Sambutan Kepala</h2>
<h3 class="text-uppercase" style="color: #f8b600;">Badan <b>Kes</b>atuan <b>Bang</b>sa dan <b>Pol</b>itik</h3>

<a class="main_btn mt-md-0 mt-4" href="<?php echo base_url(); ?>profil/detail/28/sambutan-kepala-badan-kesatuan-bangsa-dan-politik">Selengkapnya</a>
</div>
</div>
                  </div>
              </div>
          </div>
      </div>
  </section>
  <!-- SELESAI BANNER IKLAN -->
  <!-- MULAI IKLAN -->
  <section class="testimonial-area section_gap_top">
    <div class="container">
        <div class="row justify-content-center section-title-wrap">
            <div class="col-lg-12">
                <h5>Berita Hari Ini</h5>
                <h2>Berita Terbaru</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="owl-carousel active_testimonial">
                    <?php
                    $no=1;
                    $beritaterbaru = $this->M_data->beritaterbaru2(0,5);
                    foreach($beritaterbaru->result() as $row){
                        $isi=strip_tags($row->isi_berita);
                        $isi=substr($isi,0,180);
                        $judul=seo_link($row->judul);
                        $judulan=seo_link($row->nama_kategori);
                        $photopath = str_replace('-', '/', $row->tanggal_modif);
                        $a=substr($row->tanggal, 0,4);
                        $b=substr($row->tanggal, 5,2);
                        $c=substr($row->tanggal, 8,9);
                        $tanggal=$c.'/'.$b.'/'.$a;
                        if  ($row->gambar!='') {
                            $gambar=base_url() ."foto_berita/".$photopath."/".$row->gambar;
                        }
                        else {
                            $gambar=base_url() ."foto_berita/image-default.jpg";
                        }
                        ?>
                        <div class="single_testi">
                            <center><img src="<?php echo $gambar; ?>" class="card-img-top" alt="blog" width="360px" height="313px"></center>
                            <div class="testi_content">
                             <a href="<?php echo base_url(); ?>berita/detail/<?php echo $row->id_berita."/".$judul;?>"><h3><b><?php echo $row->judul; ?></b></h3></a>
                             <sup><?php echo $row->hari; ?>, <?php echo tgl_indo($row->tanggal); ?> | <?php echo $row->jam; ?></sup>
                             <p><?php echo $isi; ?>...</p>
                         </div>
                     </div>
                 <?php }  ?>
             </div>
         </div>
     </div>
 </div>
</section>
<!-- SELESAI IKLAN -->
<!-- MULAI ARTIKEL DAN MULTIMEDIA -->
<section class="feature-area section_gap_top">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-7">
                <span class="main_btn mt-4 mt-md-0" href="#">
                    <a href="<?php echo base_url(); ?>" class="text-white"><b>Home</b></a>
                    <i class="fa fa-arrow-right mx-2"></i>
                    <a href="<?php echo base_url(); ?>artikel" class="text-white"><b>Artikel</b></a>
                </span>
                <div class="row">
                    <?php
                    $no=1;
                    $artikel = $this->M_data->artikelterbaru2(0,4);
                    foreach($artikel->result() as $row){
                        $isi=strip_tags($row->isi_artikel);
                        $isi=substr($isi,0,100);
                        $judul=seo_link($row->judul);
                        $judulan=seo_link($row->nama_kategori);
                        $photopath = str_replace('-', '/', $row->tanggal_modif);
                        $a=substr($row->tanggal, 0,4);
                        $b=substr($row->tanggal, 5,2);
                        $c=substr($row->tanggal, 8,9);
                        $tanggal=$c.'/'.$b.'/'.$a;
                        if  ($row->gambar!='') {
                            $gambar=base_url() ."foto_artikel/".$photopath."/".$row->gambar;
                        }
                        else {
                            $gambar=base_url() ."foto_berita/image-default.jpg";
                        }
                        ?>
                        <div class="col-lg-6 col-md-6">
                          <div class="single-feature">
                            <h4><?php echo $row->judul; ?></h4>
                            <p><?php echo $isi; ?>...
                            </p>
                            <a href="<?php echo base_url(); ?>artikel/detail/<?php echo $row->id_artikel."/".$judul;?>" class="genric-btn success circle">Selengkapnya</a>

                        </div>
                    </div>
                    <?php
                    $no=$no+1;
                } ?>
            </div>
        </div>
        <div class="col-lg-5 offset-md-0 col-md-12 text-left section-title-wrap mt-4 mt-lg-0">
            <span class="main_btn mt-4 mt-md-0" href="#">
                <a href="<?php echo base_url(); ?>" class="text-white"><b>Home</b></a>
                <i class="fa fa-arrow-right mx-2"></i>
                <a href="<?php echo base_url(); ?>pengumuman" class="text-white"><b>Pengumuman</b></a>
            </span>
            <div class="row">
                <?php
                $pengumuman=$this->M_data->pengumuman(3);
                foreach($pengumuman->result() as $row){
                    $judul=seo_link($row->judul);
                    $tahunp=substr($row->tanggal_pengumuman, 0,4);
                    $bulanp=substr($row->tanggal_pengumuman, 5,2);
                    $tanggalp=substr($row->tanggal_pengumuman, 8,10);
                    $photopath = str_replace('-', '/', $row->tanggal_pengumuman);
                    ?>
                    <h4>
                        <a href="<?php echo base_url(); ?>pengumuman/detail/<?php echo $row->id_pengumuman."/".$judul;?>"><?php echo $row->judul; ?></a>
                    </h4>
                    <p><?php echo $tanggalp; ?>/<?php echo $bulanp; ?>/<?php echo $tahunp; ?> Jam <?php echo $row->jam; ?></p>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
</section>
<!-- SELESAI ARTIKEL DAN MULTIMEDIA -->
<!-- MULAI GALERI KEGIATAN -->
<section class="about-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="row justify-content-center text-left section-title-wrap">
                    <div class="col-lg-12">
                        <h5>Arsip Kegiatan</h5>
                        <h2>Galeri Kegiatan</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <?php
                            $fotokolom=$this->M_data->fotokolom(0,3);
                            foreach($fotokolom->result() as $row){
                                $isi=strip_tags($row->keterangan);
                                $isi=substr($isi,0,140);
                                $judul=seo_link($row->judul_fotoberita);
                                $photopath = str_replace('-', '/', $row->tanggal_modif);
                                $a=substr($row->tanggal, 0,4);
                                $b=substr($row->tanggal, 5,2);
                                $c=substr($row->tanggal, 8,9);
                                $tanggal=$c.'/'.$b.'/'.$a;
                                ?>
                                <div class="col-lg-4 col-md-4 col-3 single_brand">
                                  <img src="<?php echo base_url(); ?>foto_galeri/<?php echo$photopath; ?>/small_<?php echo $row->gbr_gallery;?>" alt="" style="width: 180px; height: 150px;">
                                  <a href="<?php echo base_url(); ?>galeri/detail/<?php echo $row->id_fotoberita; ?>/<?php echo seo_link($row->judul_fotoberita); ?>">
                                    <b><?php echo $row->judul_fotoberita; ?></b></a>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- SELESAI GALERI KEGIATAN -->
            <!-- MULAI BERHITUNG -->
            <div class="offset-lg-1 col-lg-4">
                <div class="about_box">
                    <div class="activity">
                        <div class="row">
                            <div class="col-lg-6 col-md-3 col-6">
                                <div class="activity_box">
                                    <div>
                                        <img src="<?php echo base_url(); ?>style/_/img/about/i1.png" alt="">
                                    </div>
                                    <h3><span class="counter"><?php echo $jumlah_kegiatan ?></span></h3>
                                    <p>Kegiatan</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-3 col-6">
                              <div class="activity_box">
                                <div>
                                  <img src="<?php echo base_url(); ?>style/_/img/about/i2.png" alt="">
                              </div>
                              <h3><span class="counter"><?php echo $jumlah_artikel ?></span></h3>
                              <p>Artikel</p>
                          </div>
                      </div>
                      <div class="col-lg-6 col-md-3 col-6">
                          <div class="activity_box">
                            <div>
                              <img src="<?php echo base_url(); ?>style/_/img/about/i3.png" alt="">
                          </div>
                          <h3><span class="counter"><?php echo $jumlah_berita ?></span></h3>
                          <p>Berita</p>
                      </div>
                  </div>
                  <div class="col-lg-6 col-md-3 col-6">
                      <div class="activity_box">
                        <div>
                          <img src="<?php echo base_url(); ?>style/_/img/about/i4.png" alt="">
                      </div>
                      <h3 class="counter"><?php echo $jumlah_pengumuman ?></h3>
                      <p>Pengumunan</p>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>
<!-- SELESAI BERHITUNG -->
<!-- BATAS PENUTUP ISI -->
</div>
</div>
</section>
<!-- BATAS PENUTUP ISI -->
<?php $this->load->view("v_footer"); ?>
<!-- MULAI JAVASCRIPT -->
<script src="<?php echo base_url(); ?>style/_/js/jquery-3.2.1.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/popper.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/vendors/nice-select/js/jquery.nice-select.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/vendors/isotope/isotope-min.js"></script>
<script src="<?php echo base_url(); ?>style/_/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/jquery.ajaxchimp.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/mail-script.js"></script>
<script src="<?php echo base_url(); ?>style/_/js/custom.js"></script>
<!-- SELESAI JAVASCRIPT -->
</body>
<!-- SELESAI BODY -->
</html>
<!-- ### AKHIR DARI SEMUA CERITA ### -->