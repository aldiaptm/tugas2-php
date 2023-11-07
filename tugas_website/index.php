<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
            background-color: peachpuff;
        }

        .table {
            margin-top: 20px;
        }

        th {
            text-align: center;
        }

        h1 {
            text-transform: uppercase;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <?php
                include 'koneksi.php';
                $query = mysqli_query($conn, "SELECT c.id, c.first_name, c.email, c.phone, c.address, c.created_at from customer as c ORDER BY created_at ASC;");
                ?>
                <center>
                    <img src="image/logohokkaido.png" alt=""><br>
                    <img src="image/hokkaido2.jpg" alt=""><br><br>
                </center>
                <h3><strong>Data Pelanggan:</strong></h3><br>
                <a class="btn btn-info" style="margin-bottom:5px; margin-top:10px" href="tambah.php"> Tambah Customer </a>
                <table class="table table-bordered">
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            Nama
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Telepon
                        </th>
                        <th>
                            Alamat
                        </th>
                        <th>
                            Dibuat Pada
                        </th>
                        <th>
                            Aksi
                        </th>
                    </tr>
                    <?php
                    if (mysqli_num_rows($query) > 0) {
                        while ($data = mysqli_fetch_array($query)) {
                            ?>
                            <tr>
                                <td>
                                    <?php echo $data["id"] ?>
                                </td>
                                <td>
                                    <?php echo $data["first_name"] ?>
                                </td>
                                <td>
                                    <?php echo $data["email"] ?>
                                </td>
                                <td>
                                    <?php echo $data["phone"] ?>
                                </td>
                                <td>
                                    <?php echo $data["address"] ?>
                                </td>
                                <td>
                                    <?php echo $data["created_at"] ?>
                                </td>
                                <td> <a href="hapus.php?id=<?php echo $data["id"] ?>" class="label label-danger"> Delete </a>
                                    &nbsp; <a href="edit.php?id=<?php echo $data["id"] ?>" class="label label-warning"> Ubah
                                    </a></td>
                            </tr>
                        <?php } ?>
                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</html>