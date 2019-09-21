<?php
class pesan extends CI_Controller
{
    public function index()
    {
        $data['judul'] = 'Halaman Pesan';
        $data['contents'] = 'pesan/index';

        $this->load->view('templates/index', $data);
    }
};
