<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('mdataps');
        $this->load->model('mdatapd');
        $this->load->model('eventAk');
    }

    ////////////////////////////////////// ADMIN //////////////////////////////////////////////////

    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['event_ter'] = $this->eventAk->tampil_event_ter_last()->row();
        $data['all_peserta'] = $this->mdatapd->tampil_peserta_all()->row();
        $data['last_date'] = $this->eventAk->tampil_last_date()->row();
        $data['last_money'] = $this->mdatapd->tampil_last_money()->row();

        $this->load->helper('url');
        $data['data'] = $this->eventAk->tampil_data_ak();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer');
    }

    ////////////////////////////////////// DATA PENDAFTARAN ///////////////////////////////////////////////////

    public function datapendaftaran()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->helper('url');
        $data['data'] = $this->mdataps->tampil_tunggu();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/datapendaftaran', $data);
        $this->load->view('templates/footer');        
    }

    ////////////////////////////////////// DATA PESERTA //////////////////////////////////////////////////
    public function datapeserta()
    {

        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->helper('url');
        $data['data'] = $this->mdataps->tampil_peserta();
        $reminder = $this->eventAk->reminder();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/datapeserta', $data);
        $this->load->view('templates/footer');
    }

    public function input_data()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['eventak'] = $this->eventAk->tampil_data_ak()->result();


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/input_data', $data);
        $this->load->view('templates/footer');
    }

    public function tambah_data()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $eventak = $this->input->post('eventak');
        $nama_ps = $this->input->post('nama_ps');
        $umur = $this->input->post('umur');
        $no_telp = $this->input->post('no_telp');
        $biaya = $this->input->post('biaya');
        $email_ps = $this->input->post('email_ps');
        $tglsetuju = date('Y-m-d');

        $data = array(
            'id_eventak' => $eventak,
            'nama_ps' => $nama_ps,
            'umur' => $umur,
            'no_telp' => $no_telp,
            'email_ps' => $email_ps,
            'biaya_pendaftaran' => $biaya,
            'tgl_disetujui' => $tglsetuju
        );

        $config['protocol'] = "smtp";
        $config['smtp_host'] = "ssl://smtp.gmail.com";
        $config['smtp_port'] = "465";
        $config['smtp_user'] = ""; //Jangan lupa ganti Email
        $config['smtp_pass'] = ""; //Jangan lupa juga ganti Passwordnya
        $config['charset'] = "utf-8";
        $config['mailtype'] = "html";
        $config['newline'] = "\r\n";
        $this->load->library('email');
        
        $this->email->initialize($config);

        //Untuk email coba allow dulu email adminnya untuk proses autentikasi pengiriman dengan gmail.
        $this->email->from('bandungdesign@gmail.com', 'BandungDesign');
        $this->email->to($email_ps); //untuk mengirimkan notif ke user sesuai inputan pada aplikasi web
        $this->email->subject('Akun Persetujuan Kehadiran Event');
        $this->email->message('Hallo kami dari BandungDesign akan mengonfirmasi anda dalam keikutsertaan event board game ini, harap konfirmasi persetujuan kehadiran anda pada link ini : <a href="'.base_url().'user/activation?email_ps='.$email_ps.'">Saya akan Hadir!!!</a>');

        //Cek pengiriman email
        if ($this->email->send()) {
            //Akun ditambahkan ke database
            $this->mdataps->tambah_data($data);
            redirect('user/datapendaftaran');
        } else {
            //Tampilkan pesan error dari system
            // die($this->email->print_debugger());
            
            //Tampilkan pesan error dengan teks
            die('Email tidak memiliki izin untuk mengakses akun Gmail anda !!!');
        }

    }

    function activation()
    {
        $email = $this->input->get('email_ps');
        $user = $this->mdataps->tampil_tunggu();

        if($user) {
            $this->mdataps->accept_event($email);
            //Tinggal ganti link url
            redirect('user');
        } else {
            die('Gagal aktivasi kehadiran');
        }
    }

    public function edit_data($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['data'] = $this->mdataps->edit_data($id);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/editdata', $data);
        $this->load->view('templates/footer');
    }

    public function update_data($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $nama_ps = $this->input->post('nama_ps');
        $umur = $this->input->post('umur');
        $no_telp = $this->input->post('no_telp');
        $email_ps = $this->input->post('email_ps');

        $data = array(
            'nama_ps' => $nama_ps,
            'umur' => $umur,
            'no_telp' => $no_telp,
            'email_ps' => $email_ps
        );

        $this->mdataps->update_data($data, $id);
        redirect('user/datapeserta');
    }

    public function hapusdata($id)
    {
        $this->mdataps->hapusdata($id);
        redirect('user/datapeserta');
    }


    ////////////////////////////////////// DATA PENDAPATAN //////////////////////////////////////////////////

    public function datapendapatan()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->model('mdatapd');
        $this->load->helper('url');
        $data['data'] = $this->mdatapd->tampil_data();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/datapendapatan', $data);
        $this->load->view('templates/footer');
    }
    public function input_datapd()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/input_datapd', $data);
        $this->load->view('templates/footer');
    }
    public function tambah_datapd()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $boardgame = $this->input->post('boardgame');
        $jl_partisipan = $this->input->post('jl_partisipan');
        $harga_tiket = $this->input->post('harga_tiket');
        $pd_masuk = $this->input->post('pd_masuk');
        $pengeluaran = $this->input->post('pengeluaran');
        $pd_bersih = $this->input->post('pd_bersih');

        $data = array(
            'boardgame' => $boardgame,
            'jl_partisipan' => $jl_partisipan,
            'harga_tiket' => $harga_tiket,
            'pd_masuk' => $pd_masuk,
            'pengeluaran' => $pengeluaran,
            'pd_bersih' => $pd_bersih

        );

        $this->mdatapd->tambah_datapd($data);
        redirect('user/datapendapatan');
    }

    public function edit_datapd($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['data'] = $this->mdatapd->edit_datapd($id);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/edit_datapd', $data);
        $this->load->view('templates/footer');
    }

    public function update_datapd($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $jl_partisipan = $this->input->post('jl_partisipan');
        $harga_tiket = $this->input->post('harga_tiket');
        $pd_masuk = ($jl_partisipan * $harga_tiket);
        $pengeluaran = $this->input->post('pengeluaran');
        $pd_bersih = ($pd_masuk - $pengeluaran);


        $data = array(
            'jl_partisipan' => $jl_partisipan,
            'harga_tiket' => $harga_tiket,
            'pd_masuk' => $pd_masuk,
            'pengeluaran' => $pengeluaran,
            'pd_bersih' => $pd_bersih

        );

        $this->mdatapd->update_datapd($data, $id);
        redirect('user/datapendapatan');
    }

    public function hapusdatapd($id, $id_boardgame)
    {
        $this->mdatapd->hapusdatapd($id);
        $data_status = array(
            'status' => 0,
        );

        $this->eventAk->update_dataak($data_status, $id_boardgame);
        redirect('user/datapendapatan');
    }

    ////////////////////////////////////// EVENT AKAN DATANG //////////////////////////////////////////////////

    public function akandatang()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->model('eventAk');
        $this->load->helper('url');
        $data['data'] = $this->eventAk->tampil_data_ak();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/akandatang', $data);
        $this->load->view('templates/footer');
    }

    public function input_dataak()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/input_dataak', $data);
        $this->load->view('templates/footer');
    }
    public function tambah_dataak()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $boardgame = $this->input->post('boardgame');
        $tanggal = $this->input->post('tanggal');
        $tempat = $this->input->post('tempat');
        $notif = $this->db->query('SELECT *, datediff(tanggal, CURRENT_DATE()) AS selisih,
        CASE WHEN datediff(tanggal, CURRENT_DATE()) <= 2 THEN "bentarlagi" ELSE "tunggu" END AS notif FROM event_ak WHERE status = 0')->result_array();
        // die(print_r($notif));
        $data = array(
            'boardgame' => $boardgame,
            'tanggal' => $tanggal,
            'tempat' => $tempat,
            'notif' => $notif[0]['notif']
        );

        $this->eventAk->tambah_dataak($data);
        redirect('user/akandatang');
    }

    public function edit_dataak($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['data'] = $this->eventAk->edit_dataak($id);

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/edit_dataak', $data);
        $this->load->view('templates/footer');
    }

    public function update_dataak($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $boardgame = $this->input->post('boardgame');
        $tanggal = $this->input->post('tanggal');
        $tempat = $this->input->post('tempat');

        $data = array(
            'boardgame' => $boardgame,
            'tanggal' => $tanggal,
            'tempat' => $tempat

        );


        $this->eventAk->update_dataak($data, $id);
        redirect('user/akandatang');
    }

    public function hapusdataak($id)
    {
        $this->eventAk->hapusdataak($id);
        redirect('user/akandatang');
    }

    public function selesai_dataak($id)
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['event_ak'] = $this->db->get_where('event_ak', ['id' => $id])->row_array();


        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/selesaievent', $data);
        $this->load->view('templates/footer');
    }

    public function selesai_dataak_action()
    {
        $id_boardgame = $this->input->post('id_boardgame');
        $jl_partisipan = $this->input->post('jl_partisipan');
        $harga_tiket = $this->input->post('harga_tiket');
        $pd_masuk = ($jl_partisipan * $harga_tiket);
        $pengeluaran = $this->input->post('pengeluaran');
        $pd_bersih = ($pd_masuk - $pengeluaran);

        $data = array(
            'id_boardgame' => $id_boardgame,
            'jl_partisipan' => $jl_partisipan,
            'harga_tiket' => $harga_tiket,
            'pd_masuk' => $pd_masuk,
            'pengeluaran' => $pengeluaran,
            'pd_bersih' => $pd_bersih

        );

        $data_status = array(
            'status' => 1,
        );

        $this->eventAk->update_dataak($data_status, $id_boardgame);
        $this->mdatapd->tambah_datapd($data);
        redirect('user/datapendapatan');
    }

    ////////////////////////////////////// EVENT TERLAKSANA //////////////////////////////////////////////////
    public function terlaksana()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->helper('url');
        $data['data'] = $this->eventAk->tampil_data_ter();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/terlaksana', $data);
        $this->load->view('templates/footer');
    }

    // PROFIL ACUU
    public function profile()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/profile', $data);
        $this->load->view('templates/footer');
    }

    // FORGOT PASSWORD
    public function forgotpass()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/forgotpass', $data);
        $this->load->view('templates/footer');
    }
}
