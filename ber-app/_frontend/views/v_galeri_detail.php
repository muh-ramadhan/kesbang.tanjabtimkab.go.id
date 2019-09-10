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
                  <h1 class="text-uppercase">Galeri Kegiatan</h1>
                </div>
                <div class="banner-right position-relative">
                  <p><?php echo $judulan; ?></p>
                  <span class="main_btn mt-4 mt-md-0" href="#">
                    <a href="<?php echo base_url(); ?>" class="text-white">Home</a>
                    <i class="fa fa-arrow-right mx-2"></i>
                    <a href="<?php echo base_url(); ?>galeri" class="text-white">Semua Galeri Kegiatan</a>
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
            <div class="section-top-border">
              <h3><?php echo $judulan; ?></h3>
              <p>Tanggal Kegiatan : <b><?php $tanggal=$this->M_data->tanggalalbum($this->uri->segment(3,0)); echo tgl_indo($tanggal); ?></b></p>
              <div class="row gallery-item">
                <?php
                foreach($detail_album->result() as $row){
                  $photopath = str_replace('-', '/', $row->tanggal_modif);
                  ?>
                  <div class="col-md-4">
                    <a href="<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>" class="img-gal">
              <div class="single-gallery-image" style="background-image: url(<?php echo base_url(); ?>foto_galeri/<?php echo $photopath; ?>/small_<?php echo $row->gbr_gallery; ?>);"></div>
            </a>
                  </div>
                <?php }?>
                <?php
                $id=$row->id_fotoberita;
                $ip_addr = $this->input->ip_address();

                $data = array('dibaca' => $row->dibaca + 1);
                $where = "id_fotoberita = '".$this->uri->segment(3,0)."'";
                $str = $this->db->update('fotoberita', $data, $where);
                ?>
              </div>
            </div>
          </div>