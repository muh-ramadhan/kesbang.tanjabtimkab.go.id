
<!-- MULAI APLIKASI
<section class="cta_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="cta_inner d-flex flex-md-row flex-column justify-content-between align-items-center">
                    <div class="mb-md-0 mb-4 text-sm-left text-center">
                        <h2>Daftar Aplikasi</h2>
                    </div>
                    <div class="">
                        <a href="<?php echo base_url(); ?>kegiatan" class="main_btn">Agenda Kegiatan</a>
                        <a href="<?php echo base_url(); ?>pegawai" class="main_btn">Staff / Pegawai</a>
                        <a href="#" class="main_btn">Next Update</a>
                        <a href="#" class="main_btn">Next Update</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
-->
<!-- SELESAI APLIKASI -->
<!-- MULAI FOOTER -->
<br><br>
<footer class="footer-area">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="single-defination">
                    <?php
                    $identitas = $this->M_data->identitasfooter();
                    foreach($identitas->result() as $row) {
                      ?>
                      <a href="<?php echo base_url()?>"><img src="<?php echo base_url()?>style/images/<?php echo $row->logo; ?>" alt="" style="width: 100%; height: 90px;"></a>
                      <p style="color: #dfdede"><?php echo $row->meta_deskripsi; ?></p>
                  <?php } ?>
              </div>
          </div>
          <div class="col-md-4">
            <div class="single-defination">
                <h2 class="mb-20"><b>Weblink</b></h2>
                <?php
                $weblink=$this->M_data->weblink(4);
                foreach($weblink->result() as $row){
                    $judul=seo_link($row->nama_weblink);
                    ?><table>
                        <tr>
                            <th><a href="<?php echo $row->link; ?>" target="_blank"><?php echo $row->nama_weblink; ?></a></th>
                        </tr>
                    </table>
                <?php } ?>
            </div>
        </div>
        <div class="col-md-4">
            <h2 class="mb-20"><b>Alamat Kantor</b></h2>
            <a href="https://goo.gl/maps/J952yJJYAukp2QAJ7" class="main_btn">Google Maps</a>
            <br>
            <?php
            $identitas = $this->M_data->identitasfooter();
            foreach($identitas->result() as $row) {
                ?>
            <div class="media contact-info">
                <span class="contact-info__icon"><i class="fa fa-home"></i></span>
                <div class="media-body">
                    <p style="color: #dfdede"><?php echo $row->alamat; ?></p>
                </div>
            </div>
            <div class="media contact-info">
                <span class="contact-info__icon"><i class="fa fa-phone"></i></span>
                <div class="media-body">
                    <p style="color: #dfdede"><?php echo $row->no_telp; ?></p>
                </div>
            </div>
            <div class="media contact-info">
                <span class="contact-info__icon"><i class="fa fa-envelope-o"></i></span>
                <div class="media-body">
                    <p style="color: #dfdede"><?php echo $row->email; ?></p>
                </div>
            </div>
            <?php } ?>
        </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <p class="footer-text"> Copyright &copy; <script>document.write(new Date().getFullYear());</script> <?php echo $judulappfooter; ?> | <a href="http://diskominfo.tanjabtimkab.go.id//" target="_blank">Diskominfo Tanjabtimkab</a></p>
        <div class="social_icon">
            <a href="#"> <i class="fa fa-facebook"></i> </a>
            <a href="#"> <i class="fa fa-twitter"></i> </a>
            <a href="#"> <i class="fa fa-instagram"></i> </a>
            <a href="https://github.com/muh-ramadhan"> <i class="fa fa-github"></i> </a>
        </div>
    </div>
</div>
</div>
</footer>
<!-- SELESAI FOOTER -->