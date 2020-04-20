<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Data Peserta</h1>
    <section class="content">

        <button type="submit" class="btn btn-danger " style="float:left;">PDF</button>
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
                            <a href="<?= base_url(); ?>user/hapusdata/<?= $p->id; ?>" class="badge badge-pill badge-danger">Delete</a>
                            <a href="<?= base_url(); ?>user/rincian/<?= $p->id; ?>" class="badge badge-pill badge-info">Rincian</a>
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