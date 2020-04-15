<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Edit Data Pendapatan</h1>
    <section class="content">
        <form method="post" action="<?= base_url() ?>user/update_datapd/<?= $data['id']; ?>">
            <div class="form-group">
            <div class="form-group">
                <label>Jumlah Partisipan</label>
                <input type="text" id="jl_partisipan" name="jl_partisipan" class="form-control" value="<?= $data['jl_partisipan']; ?>">
            </div>
            <div class="form-group">
                <label>Tiket Masuk</label>
                <input type="text" id="harga_tiket" name="harga_tiket" class="form-control" value="<?= $data['harga_tiket']; ?>">
            </div>
            <div class="form-group">
                <label>Pengeluaran</label>
                <input type="text" id="pengeluaran" name="pengeluaran" class="form-control" value="<?= $data['pengeluaran']; ?>">
            </div>

            <button type="submit" class="btn btn-primary">Save Change </button>

        </form>


</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->