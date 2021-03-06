<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-lg-7">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <div class="text-center">
                                        <img class="img-profile rounded small-col-lg" src="<?= base_url('assets/img/bandung-design-logo.png'); ?>">
                                    </div>
                                    <h1 class="h4 text-gray-900 mb-4"></h1>
                                </div>
                                <?= $this->session->flashdata('message'); ?>
                                <form class="user" method="post" action="<?= base_url('auth'); ?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Enter Email Address..." value="<?= set_value('email'); ?>">
                                    </div>
                                    <?= form_error('email', '<small class="text-danger" pl-3">', '</small>');  ?>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                    </div>
                                    <?= form_error('password', '<small class="text-danger" pl-3">', '</small>');  ?>
                                    <button type="submit" class="btn btn-warning btn-user btn-block">
                                        Login
                                    </button>
<!--                                    <a href="<?= base_url('auth/registration'); ?>" class="btn btn-primary btn-user btn-block">Register</a>-->
                                </form>
                                <hr>
                                <div class="text-center">
<!--                                    <a class="small" href="<?= base_url('auth/forgotpassword'); ?>">Forgot Password?</a>-->
                                </div>
                                <div class="copyright text-center my-auto">
                                    <span>
                                        <small> &copy; Bangkit Prayoga Abimanyu - 2019</small>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>