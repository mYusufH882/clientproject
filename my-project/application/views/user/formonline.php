<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" type="image/png" href="<?= base_url('assets/img/bandung-design-logo.png'); ?>">
    <title>Form Online Event Game ~ BandungDesign</title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url('assets/'); ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url('assets/'); ?>css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
    <!-- Image and text -->
    <nav class="navbar navbar-dark bg-dark">
        <span class="navbar-brand" href="#">
            <img src="<?= base_url('assets/') ?>img/BD.png" width="60" height="30" class="d-inline-block align-top" alt="BandungDesign">
            Form Pendaftaran Event Baru Online
        </span>
    </nav>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 mt-5 bg-light p-5">
                <?php echo $this->session->flashdata('message'); ?>
                <?= form_open_multipart('user/daftar_event_lagi') ?>
                    <div class="form-group">
                        <label>Event Baru yang Akan Datang</label>
                        <select id="evt" name="eventak" class="custom-select custom-select-md" required>
                            <option value="0">Pilih Event yang akan diikuti</option>
                            <?php foreach($evtak as $e): ?>
                                <option value="<?= $e['id'] ?>"><?= $e['boardgame'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Harga Tiket</label>
                        <input id="tiket" type="text" name="harga" class="form-control" placeholder="Harga Tiket" readonly>
                    </div>
                    <div class="form-group">
                        <label>Email Anda</label>
                        <select id="evt" name="email" class="custom-select custom-select-md" readonly>
                            <option value="0">Pilih Email Anda</option>
                            <?php foreach($emps as $e): ?>
                                <option value="<?= $e['id'] ?>"><?= $e['email_ps'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Masukkan Nominal Pembayaran</label>
                        <input type="text" name="bayar" class="form-control" placeholder="Nominal Uang" required>
                    </div>
                    <div class="form-group">
                        <label>Upload Bukti Transfer/Pembayaran</label>
                        <input type="file" name="bukti" class="form-control-file" required>
                    </div>
                    <button type="submit" class="btn btn-success">Kirim</button>
                    <button type="reset" class="btn btn-warning">Refresh</button>
                </form>
            </div>
        </div>
    </div>


</body>
</html>