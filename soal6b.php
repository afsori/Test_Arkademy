<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- memanggil font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <title>Halaman Statis</title>
</head>

<body>
    <div class="container">
        <br>
        <div>
            <button class="btn btn-warning " data-toggle="modal" data-target="#modalafs" data-whatever="@getbootstrap"> <i class="fa fa-plus"></i> ADD</button>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">name</th>
                    <th scope="col">Work</th>
                    <th scope="col">Salary</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr class="">
                    <td>Bintang</td>
                    <td>Frontend Dev</td>
                    <td>10.000.000</td>
                    <td>
                        <button class="btn btn-success " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"> <i class="fa fa-edit" aria-hidden="true"> </i>Edit</button>
                        <button onclick="swal('Apakah Anda Yakin!', 'Klik tombol!' , 'error')" class=" btn btn-danger btn-sm "> <i class="fas fa-trash"></i> Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>Tasya</td>
                    <td>Backend Dev</td>
                    <td>12.000.000</td>
                    <td>
                        <button class="btn btn-success " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"> <i class="fa fa-edit" aria-hidden="true"> </i>Edit</button>
                        <button onclick="swal('Data berhasil dihapus', 'Klik tombol!' , 'error')" class=" btn btn-danger btn-sm "> <i class="fa fa-edit" aria-hidden="true"> </i>Delete</button>
                    </td>

                </tr>
                <tr>
                    <td>Poetra</td>
                    <td>Backend</td>
                    <td>12.000.000</td>
                    <td>
                        <button class="btn btn-success " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"> <i class="fa fa-edit" aria-hidden="true"> </i>Edit</button>
                        <button onclick="swal('Data berhasil dihapus', 'Klik tombol!' , 'error')" class=" btn btn-danger btn-sm "> <i class="fa fa-edit" aria-hidden="true"> </i>Delete</button>
                    </td>

                </tr>
                <tr>
                    <td>Poetra</td>
                    <td>Frontend Dev</td>
                    <td>10.000.000</td>
                    <td>
                        <button class="btn btn-success " data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap"> <i class="fa fa-edit" aria-hidden="true"> </i>Edit</button>
                        <button onclick="swal('Data berhasil dihapus', 'Klik tombol!' , 'error')" class=" btn btn-danger btn-sm "><i class="fa fa-edit" aria-hidden="true"> </i> Delete</button>
                    </td>

                </tr>

            </tbody>
        </table>

    </div>


    <!-- Edit data -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Name</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Work</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Salary</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" id="tombol" onclick="swal('Selamat!', 'Klik tombol!' , 'success')">Edit</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Add data -->
    <div class="modal fade" id="modalafs" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ADD Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recipient-name" value="Name">
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Work</option>
                                <option>Web Developer</option>
                                <option>Backend Developer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>salary</option>
                                <option>12.000.000</option>
                                <option>10.000.000</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" onclick="swal('Selamat!', 'Klik tombol!' , 'success')"> <i class="fa fa-plus"></i> ADD</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- memanggil alert javascript -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>

</html>