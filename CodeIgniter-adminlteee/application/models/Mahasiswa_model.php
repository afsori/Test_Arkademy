<?php
class Mahasiswa_model extends CI_Model
{

    public function getallmahasiswa()
    {
        return $this->db->get('mahasiswa')->result_array();
    }


    public function TambahDataMahasiswa()
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "jurusan" => $this->input->post('jurusan', true)
        ];

        $this->db->insert('mahasiswa', $data);
    }

    // public function TambahDataMahasiswa()
    // {
    //     $data = [
    //         "nama" => $this->input->post('nama', true),
    //         "nrp" => $this->input->post('nrp', true),
    //         "email" => $this->input->post('email', true),
    //         "jurusan" => $this->input->post('jurusan', true)
    //     ];

    //     $this->db->insert('mahasiswa', $data);
    // }

    public function cariDataMahasiswa()
    {
        $keyword = $this->input->post('keyword', true);
        $this->db->like('nama', $keyword);
        $this->db->or_like('jurusan', $keyword);
        $this->db->or_like('nrp', $keyword);
        $this->db->or_like('email', $keyword);
        return $this->db->get('mahasiswa')->result_array();
    }

    public function hapusDataMahasiswa($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('mahasiswa');
    }

    public function getmahasiswabyid($id)
    {
        return $this->db->get_where('mahasiswa', ['id' => $id])->row_array();
    }


    // public function ubahDataMahasiswa()
    // {
    //     $data = [
    //         "nama" => $this->input->post('nama', true),
    //         "nrp" => $this->input->post('nrp', true),
    //         "email" => $this->input->post('email', true),
    //         "jurusan" => $this->input->post('jurusan', true)
    //     ];

    //     $this->db->where('id', $this->input->post('id'));
    //     $this->db->update('mahasiswa', $data);
    // }


    public function ambildatamahasiswadgnId($id)
    {
        return $this->db->get_where('mahasiswa', ['id' => $id])->row_array();
    }


    public function ubahdatamahasiswa()
    {
        $data = [
            "nama" => $this->input->post('nama', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "jurusan" => $this->input->post('jurusan', true)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('mahasiswa', $data);
    }

    public function getMahasiswa($limit, $start)
    {
        return $this->db->get('mahasiswa', $limit, $start)->result_array();
    }

    public function countAllMahasiswa()
    {
        return $this->db->get('mahasiswa')->num_rows();
    }
}
