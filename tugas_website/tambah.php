<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
            background-color: peachpuff;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <a class="btn btn-success" style="margin-bottom:5px; margin-top:20px;" href="index.php"> HOME </a>
                <h1 style="margin-bottom:5px">Tambah Customer</h1>
                <?php
                include 'koneksi.php';
                ?>
                <form style ="margin-top: 20px" action="proses_tambah.php" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="first_name">Nama:</label>
                        <input type="text" class="form-control" id="first_name" name="first_name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Telepon:</label>
                        <input type="text" class="form-control" id="phone" name="phone">
                    </div>
                    <div class="form-group">
                        <label for="address">Alamat:</label>
                        <textarea class="form-control" id="address" name="address" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>