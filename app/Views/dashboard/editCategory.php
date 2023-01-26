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
                    <h3 class="card-title">Edit Kategori Barang</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form action="/category/saveEdit/<?= $objek["id"]?>" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="jenis">Jenis Kategori</label>
                            <input type="jenis" class="form-control" name="jenis" id="jenis" placeholder="Kategori" value="<?= $objek["name"]?>">
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