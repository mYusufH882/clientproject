<?php
class mdatapd extends CI_Model
{

    function tampil_data()
    {
        $this->db->select('pendapatan.*,event_ak.*,pendapatan.id as id_pendapatan');
        $this->db->join('event_ak', 'pendapatan.id_boardgame = event_ak.id');
        return $this->db->get('pendapatan');
    }
    function tambah_datapd($data)
    {
        $tambah = $this->db->insert('pendapatan', $data);
    }
    function edit_datapd($id)
    {
        return $this->db->get_where('pendapatan', ['id' => $id])->row_array();
    }
    function update_datapd($data, $id)
    {
        $this->db->where('pendapatan.id', $id);
        return $this->db->update('pendapatan', $data);
    }
    function hapusdatapd($id)
    {
        $this->db->where('pendapatan.id', $id);
        return $this->db->delete('pendapatan');
    }
    function tampil_last_money()
    {
        $this->db->select('pd_bersih');
        $this->db->order_by('id', 'desc');
        $this->db->limit(1);
        return $this->db->get('pendapatan');
    }
    function tampil_peserta_all()
    {
        $this->db->select('jl_partisipan');
        $this->db->order_by('id', 'desc');
        $this->db->limit(1);
        return $this->db->get('pendapatan');
    }
}
