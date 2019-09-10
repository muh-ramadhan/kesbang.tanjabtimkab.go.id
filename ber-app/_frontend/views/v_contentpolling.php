<!-- MULAI SCRIPT KOSTUM GOOGLE -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var jsonData = $.ajax({
      url: "<?php echo base_url() . 'Polling/ambilpolling' ?>",
      dataType: "json",
      async: false
    }).responseText;
    var data = new google.visualization.DataTable(jsonData);
    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, {width: 900, height: 500});
  }

</script>
<!-- SELESAI SCRIPT KOSTUM GOOGLE -->
<!-- MEMILIH KONIDISI -->
<?php  if ($this->uri->segment(1,0)=='polling' and $this->uri->segment(2,0)==null) { ?>
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
                <h1 class="text-uppercase">Polling</h1>
              </div>
              <div class="banner-right position-relative">
                <p><?php echo $judulan; ?></p>
                <span class="main_btn mt-4 mt-md-0" href="#">
                  <a href="<?php echo base_url(); ?>" class="text-white">Home</a>
                  <i class="fa fa-arrow-right mx-2"></i>
                  <a href="<?php echo base_url(); ?>polling" class="text-white">Polling</a>
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
            <div class="box-single-content clearfix" id="pagehead">
              <h2><?php echo $judulan; ?></h2>
              <p class="rs post-by"><?php echo $postingby; ?></p>
              <div id="chart_div"></div></div>
              <!-- AKHIR DARI SEMUA CERITA YANG PANJANG -->

              <?php
            } elseif ($this->uri->segment(1,0)=='polling' and $this->uri->segment(2,0)=='vote') { ?>
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
                            <h1 class="text-uppercase">Polling</h1>
                          </div>
                          <div class="banner-right position-relative">
                            <p><?php echo $judulan; ?></p>
                            <span class="main_btn mt-4 mt-md-0" href="#">
                              <a href="<?php echo base_url(); ?>" class="text-white">Home</a>
                              <i class="fa fa-arrow-right mx-2"></i>
                              <a href="<?php echo base_url(); ?>polling" class="text-white">Polling</a>
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
                        <div class="box-single-content clearfix" id="pagehead">
                          <h2><?php echo $judulan; ?></h2>
                          <p class="rs post-by"><?php echo $postingby; ?></p>
                          <div id="chart_div"></div></div>
                          <!-- AKHIR DARI SEMUA CERITA YANG PANJANG -->
                        <?php } ?>
                      </div>
                    </div>