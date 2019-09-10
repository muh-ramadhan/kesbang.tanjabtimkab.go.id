<?php if (count($detail_berita)) {
 foreach($detail_berita  as $row){
 $photopath = str_replace('-', '/', $row->tanggal_modif);
 //$judul=seo_link($row->nama_kategori);
                ?>
    <!-- MULAI MENU NAVIGASI -->
    <!-- MULAI BANNER IMAGE -->
    <section class="home_banner_area banner-area">
        <!-- SELESAi BANNER IMAGE -->
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="banner_content d-flex flex-md-row flex-column">
                            <div class="banner-left text-md-right">
                                      <h1 class="text-uppercase">Profil</h1>
                                  </div>
                                  <div class="banner-right position-relative">
                                    <p><?php echo $judulapp; ?></p><br><br>
                                    <span class="main_btn mt-4 mt-md-0" href="#">
                                        <a href="<?php echo base_url(); ?>" class="text-white">Home</a>
                                        <i class="fa fa-arrow-right mx-0"></i>
                                        <a href="<?php echo base_url(); ?>berita" class="text-white">Semua Berita</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- SELESAI MENU NAVIGASI -->
        <!-- MULAI ISI -->
        <section class="blog_area section_gap">
            <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <article class="blog_item">

                               <div class="blog_item_img">
                                  <?php if  ($row->gambar!='') {?>
                                    <img class="card-img rounded-0" src="<?php echo base_url(); ?>foto_halamanprofil/<?php echo $photopath; ?>/<?php echo $row->gambar; ?>" alt="">
                                <?php } ?>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="#" class="blog_item_date">
                                    <h2><?php echo $row->judul; ?></h2>
                                </a>
                                <p><?php echo $row->isi_halaman;  ?></p>
                                <ul class="blog-info-link">
                                 <li><?php
                                 $tanggal=$row->tgl_posting;
                                 echo nama_hari($tanggal).', ';
                                 echo tgl_indo($tanggal).' | ';
                                 echo $row->jam.' WIB ';
                                 ?> | Dibaca: <?php echo $row->dibaca; ?> Kali</li>
                             </ul>
                         </div>
                 </article>

                 <!-- MULAI PAGINATION -->
                 <nav class="blog-pagination justify-content-center d-flex">
                    <ul class="pagination">
                        <li class="page-item">
                            <?php echo $pagination; ?>
                        </li>
                    </ul>
                </nav>
                <!-- SELESAI PAGINATION -->
            </div>
        </div>
<!-- AddThis Button END -->
  <?php
 $id=$row->id_halamanprofil;
 $ip_addr = $this->input->ip_address();
  }

$data = array('dibaca' => $row->dibaca + 1);
$where = "id_halamanprofil = '".$row->id_halamanprofil."'";
$str = $this->db->update('halamanprofil', $data, $where);
} else {
 ?>
! Maaf Data Belum Tersedia
 <?php } ?>