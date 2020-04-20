<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Info Event Akan Datang</h1>
    <section class="content">
        <tr>
            <th>
                <h4> Jadwal Akan Datang </h4>
            </th>
        </tr>

        <a href="<?= base_url() ?>user/input_dataak" class="btn btn-success" style="float:right;"><i class="fa fa-plus"></i> Event Baru </a>
        <br>
        <br>

        <table class="table table-bordered table-striped shadow " id="table1">
            <thead>
                <tr>
                    <th> Boardgame </th>
                    <th> Tanggal </th>
                    <th> Tempat </th>
                    <th> Harga Tiket </th>
                    <th> Action </th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data->result() as $p) : ?>
                    <tr>
                        <td><?php echo $p->boardgame; ?></td>
                        <td><?php echo $p->tanggal; ?></td>
                        <td><?php echo $p->tempat; ?></td>
                        <td><?php echo $p->harga_tiket; ?></td>
                        <td>
                            <a href="<?= base_url(); ?>user/edit_dataak/<?= $p->id; ?>" class="badge badge-pill badge-primary">Edit</a>
                            <a href="<?= base_url(); ?>user/hapusdataak/<?= $p->id; ?>" class="badge badge-pill badge-danger">Hapus</a>
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
