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
                                  <h1 class="text-uppercase">Dokumen</h1>
                              </div>
                              <div class="banner-right position-relative">
                                <p><?php echo $judulapp; ?></p><br><br>
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
                        <?php
                        $no=1;
                        $katdokumen=$this->M_data->katdokumen();
                        foreach($katdokumen->result() as $row){
                            ?>
                            <div class="blog_details">
                                <a class="d-inline-block" href="<?php echo base_url()."dokumen/kategori/".$row->id_katdokumen."/".seo_link($row->nama_katdokumen);?>">
                                    <h2><?php echo $row->nama_katdokumen; ?></h2>
                                </a>
                                <p><?php echo $postingby; ?></p>
                            </div>
                            <?php $no=$no+1; } ?>
                        </article>
                    </div>
                </div>