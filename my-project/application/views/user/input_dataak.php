<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Input Data Event</h1>
    <section class="content">
        <form method="post" action="<?= base_url() . 'user/tambah_dataak' ?>">
            <div class="form-group">
                <label>Boardgame</label>
                <input type="text" id="boardgame" name="boardgame" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Tanggal Event</label>
                <input type="date" id="tanggal" name="tanggal" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Tempat pelaksanaan</label>
                <input type="text" id="tempat" name="tempat" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Harga Tiket</label>
                <input type="number" id="harga" name="harga" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Pengeluaran</label>
                <input type="number" id="pengeluaran" name="pengeluaran" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>

        </form>


</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->