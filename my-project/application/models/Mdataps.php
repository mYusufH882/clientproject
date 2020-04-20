<?php
class mdataps extends CI_Model
{

    function tampil_tunggu()
    {
        return $this->db->get_where('peserta', ['disetujui' => 1]);
    }

    function tampil_peserta()
    {
        return $this->db->get_where('peserta', ['disetujui' => 2]);
    }

    function accept_event($email)
    {
        $this->db->set('disetujui', 2);
        $this->db->where('email_ps', $email);
        return $this->db->update('peserta');
    }

    function tampil_data()
    {
        return $this->db->get('peserta');
    }

    function tambah_data($data)
    {
        $tambah = $this->db->insert('peserta', $data);
    }

    function edit_data($id)
    {
        return $this->db->get_where('peserta', ['id' => $id])->row_array();
    }

    function update_data($data, $id)
    {
        $this->db->where('peserta.id', $id);
        return $this->db->update('peserta', $data);
    }

    function hapusdata($id)
    {
        $this->db->where('peserta.id', $id);
        return $this->db->delete('peserta');
    }

    function rincian_data($id)
    {
        return $this->db->get_where('peserta', ['id' => $id])->row_array();
    }

    function tampil_event($id)
    {
        $this->db->select('*');
        $this->db->join('event_ak', 'event_ak.id = peserta.id_eventak');
        $this->db->from('peserta');
        $this->db->where(['peserta.id' => $id, 'peserta.disetujui' => 2]);
        return $query = $this->db->get();
    }
}
