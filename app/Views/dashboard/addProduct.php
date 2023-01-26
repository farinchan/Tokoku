<?= $this->extend("layouts/adminlte"); ?>

<?= $this->section("content"); ?>

<div class="content-wrapper" style="min-height: 1302.4px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Tambah Kategori</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
                        <li class="breadcrumb-item active">Kategori</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Tambah Kategori Barang</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form action="/products/save" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="jenis">Nama Barang</label>
                            <input type="jenis" class="form-control" name="jenis" id="jenis" placeholder="Nama Barang" name="name">
                        </div>
                        <div class="form-group">
                            <label for="jenis">deskripsi</label>
                            <textarea class="form-control" rows="3" placeholder="Enter ..." name="description"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="barcode">Barcode</label>
                            <input type="barcode" class="form-control" id="barcode" placeholder="barcode" name="barcode">
                        </div>
                        <div class="form-group">
                            <label for="jenis">stok</label>
                            <input type="jenis" class="form-control" id="jenis" placeholder="Stok" name="stock">
                        </div>
                        <div class="form-group">
                            <label for="jenis">Harga Jual</label>
                            <input type="jenis" class="form-control"id="jenis" placeholder="harga Jual" name="selling_price">
                        </div>
                        <div class="form-group">
                            <label for="jenis">Harga Modal</label>
                            <input type="jenis" class="form-control"  id="jenis" placeholder="Harga Modal" name="capital_price">
                        </div>
                        <div class="form-group">
                            <label for="jenis">kategori</label>
                            <select class="form-control" name="category_id">
                                <?php foreach ($category as $key) : ?>
                                    <option><?= $key["id"]  ?> - <?= $key["name"]  ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>



<?= $this->endSection(); ?>