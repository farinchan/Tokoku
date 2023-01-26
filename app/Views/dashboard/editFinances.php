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
                <form action="/finances/saveEdit/<?= $objek["id"]?>" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="jenis">name</label>
                            <input type="jenis" class="form-control" id="name" placeholder="Nama" name="tai" value="<?= $objek["name"] ?>">
                        </div>
                        <div class="form-group">
                            <label for="jenis">deskripsi</label>
                            <textarea class="form-control" rows="3" placeholder="Enter ..." name="description"><?= $objek["description"] ?></textarea>
                        </div>
                        <div class="form-group">
                            <label>Tanggal</label>
                            <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" id="datepicker" data-target="#reservationdate" name="date" value="<?= $objek["date"] ?>">
                                <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="jenis">Jumlah</label>
                            <input type="jenis" class="form-control" id="jenis" placeholder="jumlah" name="amount" value="<?= $objek["amount"] ?>">
                        </div>
                        <div class="form-group">
                            <label for="jenis">Note</label>
                            <select class="form-control" name="note">
                                <option>income</option>
                                <option>outcome</option>
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