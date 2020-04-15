<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Edit Data</h1>
    <section class="content">
        <form method="post" action="<?= base_url() ?>user/update_data/<?= $data['id']; ?>">
            <div class="form-group">
                <label>Nama</label>
                <input type="text" id="nama_ps" name="nama_ps" class="form-control" value=" <?= $data['nama_ps']; ?>">
            </div>
            <div class="form-group">
                <label>Umur</label>
                <input type="text" id="umur" name="umur" class="form-control" value=" <?= $data['umur']; ?>">
            </div>
            <div class=" form-group">
                <label>No Telp</label>
                <input type="text" id="no_telp" name="no_telp" class="form-control" value=" <?= $data['no_telp']; ?>">
            </div>
            <div class=" form-group">
                <label>Email</label>
                <input type="text" id="email_ps" name="email_ps" class="form-control" value=" <?= $data['email_ps']; ?>">
            </div>

            <button type=" submit" class="btn btn-primary">Save Change </button>

        </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->