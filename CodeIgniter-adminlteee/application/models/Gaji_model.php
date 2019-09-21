<?php

class Gaji_model extends CI_model
{
    public function getAllgaji()
    {
        return $this->db->get('nama')->result_array();
    }
}
