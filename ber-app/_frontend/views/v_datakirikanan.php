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
    <?php $this->load->view($vheader); ?>
    <?php $this->load->view($vdata); ?>
    <?php $this->load->view($vkanan); ?>
    <?php $this->load->view($vfooter); ?>
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