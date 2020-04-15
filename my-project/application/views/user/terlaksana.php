<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Info Event Terlaksana</h1>
    <section class="content">
        <tr>
            <th>
                <h4> Jadwal Sudah Terlaksana</h4>
            </th>
        </tr>
        <br>
        <br>



        <table class="table table-bordered table-striped shadow " id="table1">
            <thead>
                <tr>
                    <th> Boardgame </th>
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