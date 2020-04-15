<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Input Data</h1>
    <section class="content">
        <form method="post" action="<?= base_url() . 'user/tambah_data' ?>">
        <div class="form-group">
            <label>Pilih Event</label>
            <select name="eventak" class="form-control" required>
                <option value="0">Pilih</option>
                <?php foreach($eventak as $evt): ?>
                    <option value="<?= $evt->id ?>"><?= $evt->boardgame ?></option>
                <?php endforeach; ?>
            </select>
        </div>
            <div class="form-group">
                <label>Nama</label>
                <input type="text" id="nama_ps" name="nama_ps" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Umur</label>
                <input type="text" id="umur" name="umur" class="form-control" required>
            </div>
            <div class="form-group">
                <label>No Telp</label>
                <input type="text" id="no_telp" name="no_telp" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Biaya Pendaftaran</label>
                <input type="text" id="no_telp" name="biaya" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="text" id="email_ps" name="email_ps" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Save </button>

        </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->