<div class="row">
    <div class="col-xs-12">
        <div class="box box-primary ">
            <div class="box-header">
                <h3 class="box-title">Form Ubah Data</h3>
            </div>

            <div class="box-body">
                <form action="" method="post">
                    <input type="hidden" name="brg_id" value="<?= $barang['brg_id']; ?>">
                    <div class="form-group">
                        <label for="nama">Kode Barang</label>
                        <input type="text" class="form-control" id="kd_barang" name="kd_barang" value="<?= $barang['kd_barang']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="id">Nama Barang</label>
                        <input type="text" class="form-control" id="nm_barang" name="nm_barang" value="<?= $barang['nm_barang']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="email">Stok</label>
                        <input type="text" class="form-control" id="stok" name="stok" value="<?= $barang['stok']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="email">Keterangan</label>
                        <input type="text" class="form-control" id="keterangan" name="keterangan" value="<?= $barang['keterangan']; ?>">
                    </div>
                    <button type=" submit" name="ubah" class="btn btn-primary float-right">Update Data</button>
                </form>
            </div>
        </div>
    </div>
</div>