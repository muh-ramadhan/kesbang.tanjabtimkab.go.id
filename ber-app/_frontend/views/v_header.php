    <!-- BATAS PEMBUKA ISI -->
    <header class="header_area">
        <div class="top_menu d-lg-block d-none">
            <div class="container">
                <!-- BATAS PEMBUKA ISI -->
                <!-- MULAI HEADER SOSIAL MEDIA KIRI -->
                <div class="float-left">
                    <ul class="left_side">
                        <li>
                            <a href="#"><i class="fa fa-facebook-f"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-behance"></i></a>
                        </li>
                    </ul>
                </div>
                <!-- SELESAI HEADER SOSIAL MEDIA KIRI -->
                <!-- HEADER INFO KANAN -->
                <div class="float-right">
                    <ul class="right_side">
                        <?php
                        $identitas = $this->M_data->identitasfooter();
                        foreach($identitas->result() as $row) {
                            ?>
                            <li>
                                <a href="#"><i class="lnr lnr-phone-handset"></i><?php echo $row->no_telp; ?></a>
                            </li>
                            <li>
                                <a href="#"><i class="lnr lnr-envelope"></i><?php echo $row->email; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                    <!-- SELESAI HEADER INFO KANAN -->
                </div>
            </div>
            <!-- MULAI MENU -->
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg w-100">
                    <div class="container">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <?php
                    $identitas = $this->M_data->identitasfooter();
                    foreach($identitas->result() as $row) {
                        ?>
                        <a class="navbar-brand logo_h" href="<?php echo base_url(); ?>">
                            <img src="<?php echo base_url()?>style/images/<?php echo $row->logo; ?>" alt="" />
                        </a>
                    <?php } ?>
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <div class="row w-100">
                            <div class="col-lg-12 pr-lg-0">
                                <ul class="nav navbar-nav ml-auto justify-content-end">
                                    <?php
                                    $menu = $this->M_data->ambilmenu(2);
                                    foreach($menu->result() as $row){
                                        ?>
                                        <li class="nav-item submenu dropdown">
                                            <a href="<?php echo base_url();  echo $row->link;?>" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $row->nama_menu; ?></a>
                                            <?php
                                            $submenu = $this->M_data->ambilsubmenu('',$row->id_menu);
                                            ?>
                                            <ul class="dropdown-menu">
                                                <?php
                                                foreach($submenu->result() as $sub){
                                                    $lin1=substr($sub->link_submenu, 0, 3);
                                                    if ($lin1!="htt") {
                                                        $link1=base_url().$sub->link_submenu;
                                                    } else {
                                                        $link1=$sub->link_submenu;
                                                    } ?>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="<?php echo $link1; ?>"><?php echo $sub->nama_submenu; ?></a>
                                                    </li>
                                                <?php } ?>
                                            </ul>
                                        </li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- SELESAI MENU -->
    </header>