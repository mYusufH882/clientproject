<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('user'); ?>">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-gamepad"></i>
        </div>
        <div class="sidebar-brand-text ">Bandung Design <sup></sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider ">

    <!-- Heading -->
    <div class="sidebar-heading ">
        Administrator
    </div>
    <hr class="sidebar-divider ">

    <!-- Nav Item - Dashboard -->

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('user'); ?>" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-home"></i>
            <span href="">Home</span>
        </a>
    </li>



    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-folder-open"></i>
            <span>Data Event</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Data :</h6>

                <a class="collapse-item" href="<?= base_url('user/datapendaftaran'); ?>">Data Pendaftaran</a>
                <a class="collapse-item" href="<?= base_url('user/datapeserta'); ?>">Data Peserta</a>
                <a class="collapse-item" href="<?= base_url('user/akandatang'); ?>">Akan Datang</a>
                <a class="collapse-item" href="<?= base_url('user/terlaksana'); ?>">Terlaksana</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-folder-open"></i>
            <span>Data Laporan</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Laporan :</h6>
                <a class="collapse-item" href="<?= base_url('user/datapendapatan'); ?>">Data Pendapatan</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->