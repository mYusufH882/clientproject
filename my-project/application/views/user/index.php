<!-- Begin Page Content -->
<div class="container-fluid">

  <?php echo $this->session->flashdata('message'); ?>

  <?php 
    $reminder = $this->eventAk->reminder(); 
    if($reminder) {
  ?>
      <?php foreach($reminder as $rm): ?>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
          <strong><?= $rm['boardgame'] ?> akan diadakan <b><?= $rm['tanggal'] ?></b></strong>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
      <?php endforeach; ?>
      <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Event baru yang akan datang, </b></strong>
        <a href="<?= base_url() ?>user/notif_event">Kirim notifikasi</a>
        <strong> ke user yang telah terdaftar jadi peserta.</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
  <?php } ?>

  <!-- Content Row -->
  <div class="row">
  
    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Data Peserta</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $all_peserta['jl_partisipan'] ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Pendapatan Terakhir</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $last_money['pd_bersih'] ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-hand-holding-usd fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Event Yang Akan Datang</div>
              <div class="row no-gutters align-items-center">
                <div class="col-auto">
                  <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?= $last_date->tanggal ?></div>
                </div>
                <div class="col">
                  <div class="progress progress-sm mr-2">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Pending Requests Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Event Terlaksana</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $event_ter->event_ter ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-calendar-check fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800"> Welcome to Admin Page</h1>
  <section class="content">
    <tr>
      <th>
        <h4> Info Jadwal Event </h4>
      </th>
    </tr>
    <table class="table">
      <thead>
        <tr>
          <th> Board Game </th>
          <th> Tanggal </th>
          <th> Tempat </th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($data->result() as $p) : ?>
          <tr>
            <td><?php echo $p->boardgame; ?></td>
            <td><?php echo $p->tanggal; ?></td>
            <td><?php echo $p->tempat; ?></td>
          </tr>

        <?php endforeach; ?>
      </tbody>

    </table>
  </section>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->