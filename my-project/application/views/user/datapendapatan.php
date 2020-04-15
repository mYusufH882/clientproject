<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Data Pendapatan</h1>
    <section class="content">
        <tr>
            <th>
                <h4> Info Pendapatan </h4>
            </th>
        </tr>


        <button type="submit" class="btn btn-danger " style="float:left;">PDF</button>
        <br>
        <br>

        <table class="table table-bordered table-striped shadow " id="table1">
            <thead>
                <tr>
                    <th> Boardgame </th>
                    <th> Jumlah Partisipan </th>
                    <th> Tiket Masuk </th>
                    <th> Pendapatan Masuk </th>
                    <th> Pengeluaran </th>
                    <th> Pendapatan Bersih </th>
                    <th> Action </th>

                </tr>
            </thead>
            <tbody>
                <?php foreach ($data->result() as $p) : ?>
                    <tr>
                        <td><?php echo $p->boardgame; ?></td>
                        <td><?php echo $p->jl_partisipan; ?></td>
                        <td><?php echo $p->harga_tiket; ?></td>
                        <td><?php echo $p->pd_masuk; ?></td>
                        <td><?php echo $p->pengeluaran; ?></td>
                        <td><?php echo $p->pd_bersih; ?></td>
                        <td>
                            <a href="<?= base_url(); ?>user/edit_datapd/<?= $p->id_pendapatan; ?>" class="badge badge-pill badge-primary">Edit</a>
                            <a href="<?= base_url(); ?>user/hapusdatapd/<?= $p->id_pendapatan; ?>/<?= $p->id_boardgame ?>" class="badge badge-pill badge-danger">Hapus</a>
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