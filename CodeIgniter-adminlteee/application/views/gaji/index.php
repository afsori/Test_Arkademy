<!-- <div class="">
    <div class=" ">
        <div class="">
            <br>
            <br>
            <h1 class="box-title">Gaji</h1>
        </div>
        <div class="">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th>Nama</th>
                        <th>Work</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                foreach ($tblnama as $nm) : ?>
                        <tr>
                            <td><?= $nm['nama']; ?></td>
                            <td><?= $nm['salary']; ?></td>
                            <td>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>


        </div>

    </div>
</div>
</div> -->


<div class="row">
    <div class="col-md-12">
        <div class="box box-primary box-solid">
            <div class="box-header with-border">
                <h3 class="box-title">Test Arkademy</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <div class="btn-group">
                        <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-wrench"></i></button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <!-- /.box-header -->

            <div class="clearfix">&nbsp;</div>
            <table class="table table-bordered table-responsive table-striped">
                <thead class="dark">
                    <tr bgcolor="#EE6868" align="center">
                        <th>Nama </th>
                        <th>Work</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($nama as $nm) {
                        ?>
                        <tr>
                            <td><?= $nm['name'] ?></td>
                            <td><?= $nm['work'] ?></td>
                            <td><?= $nm['salary'] ?></td>
                            <td>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>