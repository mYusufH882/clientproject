<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Input Data Pendapatan</h1>
    <section class="content">
        <form method="post" action="<?= base_url() . 'user/tambah_datapd' ?>">
            <div class="form-group">
                <label>Boardgame</label>
                <input type="text" id="boardgame" name="boardgame" class="form-control">
            </div>
            <div class="form-group">
                <label>Jumlah Partisipan</label>
                <input type="text" id="jl_partisipan" name="jl_partisipan" class="form-control">
            </div>
            <div class="form-group">
                <label>Tiket Masuk</label>
                <input type="text" id="harga_tiket" name="harga_tiket" class="form-control">
            </div>
            <div class="form-group">
                <label>Pendapatan Masuk</label>
                <input type="text" id="pd_masuk" name="pd_masuk" class="form-control">
            </div>
            <div class="form-group">
                <label>Pengeluaran</label>
                <input type="text" id="pengeluaran" name="pengeluaran" class="form-control">
            </div>
            <div class="form-group">
                <label>Pendapatan bersih</label>
                <input type="text" id="pd_bersih" name="pd_bersih" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary">Save </button>

        </form>


</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->