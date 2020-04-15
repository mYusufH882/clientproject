<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> Input Data Event</h1>
    <section class="content">
        <form method="post" action="<?= base_url() ?>user/update_dataak/<?= $data['id']; ?>">
            <div class="form-group">
                <label>Boardgame</label>
                <input type="text" id="boardgame" name="boardgame" class="form-control" value="<?= $data['boardgame'] ?>">
            </div>
            <div class="form-group">
                <label>Tanggal Event</label>
                <input type="date" id="tanggal" name="tanggal" class="form-control" value="<?= $data['tanggal'] ?>">
            </div>
            <div class="form-group">
                <label>Tempat pelaksanaan</label>
                <input type="text" id="tempat" name="tempat" class="form-control" value="<?= $data['tempat'] ?>">
            </div>


            <button type="submit" class="btn btn-primary">Save Change </button>

        </form>


</div>
<!-- /.container-fluid -->

<!-- End of Main Content -->