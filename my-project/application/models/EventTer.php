<?php
class eventTer extends CI_Model
{

    function tampil_data()
    {
        return $this->db->get('event_ter');
    }
}
