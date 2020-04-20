<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Daftar Tunggu</h1>
    <section class="content">

        <a href="<?= base_url() ?>user/input_data" class="btn btn-success" style="float:right;"><i class="fa fa-plus"></i> Tambah Daftar Peserta </a>
        <br>
        <br>


        </tr>
        <table class="table table-bordered table-striped shadow  " id="table1">
            <thead>
                <tr>
                    <th> Nama </th>
                    <th> Umur </th>
                    <th> No Telp </th>
                    <th> Email </th>
                    <th> Action </th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data->result() as $p) : ?>
                    <tr>
                        <td><?php echo $p->nama_ps; ?></td>
                        <td><?php echo $p->umur; ?></td>
                        <td><?php echo $p->no_telp; ?></td>
                        <td><?php echo $p->email_ps; ?></td>
                        <td><a href="<?= base_url(); ?>user/edit_data/<?= $p->id; ?>" class="badge badge-pill badge-primary">Edit</a>
                            <a href="<?= base_url(); ?>user/hapusdatadaftar/<?= $p->id; ?>" class="badge badge-pill badge-danger">Delete</a>
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