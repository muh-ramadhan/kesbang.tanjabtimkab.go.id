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
                  <?php
                  if (count($detail_berita)) {
                    foreach($detail_berita as $row){
                      $judul=seo_link($row->nama_katdokumen);
                      $photopath = str_replace('-', '/', $row->tanggal_modif);
                      ?>
                      <h1 class="text-uppercase">Kategori Dokumen</h1>
                    </div>
                    <div class="banner-right position-relative">
                      <p><?php echo $judulan; ?></p><br><br>
                      <span class="main_btn mt-4 mt-md-0" href="#">
                        <a href="<?php echo base_url(); ?>" class="text-white">Home</a>
                        <i class="fa fa-arrow-right mx-2"></i>
                        <a href="<?php echo base_url(); ?>dok" class="text-white">Semua Dokumen</a>
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
                    <div class="section-top-border">
                      <h3 class="mb-30"><?php echo $judulan;?></h3>
                      <p><?php echo $postingby; ?></p>
                      <br>
                      <br>
                      <table class="ver-zebra2">
                        <colgroup> <col class="oce-first"></colgroup>
                        <tbody>
                          <tr>
                            <td width="200">Tahun Dokumen</td>
                            <td width="500">: <strong> <?php echo $row->tahun; ?> </strong></td>
                          </tr>
                          <tr></tr>
                          <tr>
                            <td>Keterangan</td>
                            <td> : <?php echo $row->jangkrik; ?></td>
                          </tr>
                          <tr>
                            <td>Tanggal Upload</td>
                            <td> : <?php
                            $tanggal=$row->tgl_upload;
                            echo nama_hari($tanggal).', ';
                            echo tgl_indo($tanggal);
                            ?>
                          </td>
                        </tr>
                        <tr>
                          <td>Didownload</td>
                          <td> :  <?php echo $row->dibaca; ?> Kali</td>
                        </tr>
                        <tr>
                          <td>Link File</td>
                          <td>:   <?php if ($row->metode_link==1) { ?>
                            <a href="<?php echo base_url(); ?>dokumens/<?php echo $photopath;?>/<?php echo $row->nama_file;?>" target="_blank"><b>Download</b></a>
                          <?php } else { ?>
                            <a href="<?php echo $row->link_file; ?>" target="_blank"><b>Download</b></a>
                          <?php } ?>
                        </td></tr>
                      </tbody>
                    </table>
                    <?php
                  }}
                  ?>
                </article>
              </div>
            </div>