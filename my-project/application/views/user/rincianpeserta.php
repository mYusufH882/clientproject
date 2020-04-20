<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Rincian Keikutsertaan Peserta</h1>
    <section class="content">

    <div class="col-md-5">
        <div class="card-body">
            <div class="card text-white bg-dark mb-3">
                <div class="card-body text-success ">
                    <h2><b>Username :</b> <?= $data['nama_ps'] ?></h2>
                    <h4><b>Email :</b> <?= $data['email_ps'] ?></h4>
                    <h5><b>Terdaftar sejak :</b>  <?= date('d-M-Y', strtotime($data['date'])) ?></h5>
                </div>
            </div>
        </div>
    </div>    
    
    <br>
    <br>

        </tr>
        <table class="table table-bordered table-striped shadow  " id="table1">
            <thead>
                <tr>
                    <th> Event Yang Pernah Diikuti </th>
                    <th> Tanggal Event </th>
                    <th> Tanggal Disetujui </th>
                    <th> Action </th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($evt as $e) : ?>
                    <tr>
                        <td><?= $e->boardgame ?></td>
                        <td><?= date('d-M-Y', strtotime($e->tanggal)) ?></td>                    
                        <td><?= date('d-M-Y', strtotime($e->tgl_disetujui)) ?></td>
                        <td>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>

        </table>

    </section>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->