<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gaji extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Gaji_model');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['nama'] = $this->Gaji_model->getAllgaji();
        $data['judul'] = 'Halaman Dashboard';
        $data['contents'] = 'gaji/index';
        $this->load->view('templates/index', $data);
    }
}
