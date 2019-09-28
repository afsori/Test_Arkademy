<?php
include "config.php";

$query = mysqli_query($connection, "SELECT tblnama.nama, kategori.salary, work.name
FROM ((tblnama
LEFT JOIN kategori ON tblnama.id_salary = kategori.id)
LEFT JOIN work ON tblnama.id_work = work.id)");

?>



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        .container {
            padding-top: 10px;
            margin-top: 10px;
        }
    </style>

    <title>Halaman Arkademy</title>
</head>


<body>
    <div class="container">
        <table class="table table-bordered">
            <thead>
                <tr class="table-danger">
                    <th scope="col">Name</th>
                    <th scope="col">Work</th>
                    <th scope="col">Salary</th>
                </tr>
            </thead>
            <tbody>

                <?php foreach ($query as $nm) : ?>
                    <tr>
                        <td><?php echo $nm['nama']; ?></td>
                        <td><?php echo $nm['name']; ?></td>
                        <td><?php echo $nm['salary']; ?></td>
                    </tr>

                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>


</html>