<?php
class eventAk extends CI_Model
{

    function tampil_data_ak()
    {
        $this->db->where('status', 0);
        return $this->db->get('event_ak');
    }
    function tampil_data_ter()
    {
        $this->db->where('status', 1);
        return $this->db->get('event_ak');
    }
    function reminder()
    {
        $query = $this->db->query('SELECT *, datediff(tanggal, CURRENT_DATE()) AS selisih,
        CASE WHEN datediff(tanggal, CURRENT_DATE()) <= 2 THEN "2" ELSE "1" END FROM event_ak WHERE status = 0');
        return $query->result_array();
    }
    function tambah_dataak($data)
    {
        $tambah = $this->db->insert('event_ak', $data);
    }
    function edit_dataak($id)
    {
        return $this->db->get_where('event_ak', ['id' => $id])->row_array();
    }
    function update_dataak($data, $id)
    {
        $this->db->where('event_ak.id', $id);
        return $this->db->update('event_ak', $data);
    }
    function hapusdataak($id)
    {
        $this->db->where('event_ak.id', $id);
        return $this->db->delete('event_ak');
    }
    function tampil_event_ter_last()
    {
        $this->db->select('COUNT(*) as event_ter');
        $this->db->where('status', 1);
        return $this->db->get('event_ak');
    }
    function tampil_last_date()
    {
        $this->db->select('tanggal');
        $this->db->where('status', 0);
        $this->db->order_by('tanggal', 'asc');
        $this->db->limit(1);
        return $this->db->get('event_ak');
    }
}
