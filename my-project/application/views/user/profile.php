<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"> My Profile</h1>
    <section class="content">
        <div class="card mb-3" style="max-width: 540px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="<?= base_url('assets/img/profile/') . $user['image']; ?>" class="card-img">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                            <div class="card-body text-success ">
                                <h5 class="card-title"><?= $user['name'] ?></h5>
                                <p class="card-text"><?= $user['email'] ?></p>
                                <p class="card-text-success"><small class="text-muted"> Admin since <?= date('D, d F Y ', $user['date_created']); ?> </small></p>
                            </div>
                        </div>
                    </div>
                </div>
    </section>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->