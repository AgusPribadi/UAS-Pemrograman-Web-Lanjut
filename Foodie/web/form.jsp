<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contoh Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        button[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        #result {
            display: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Pesan Tiket Pesawat</h1>
    <form id="ticketForm" action="result.jsp" method="post">
        <label for="nama">Nama:</label>
        <input type="text" id="nama" name="nama" required><br><br>

        <label for="tanggal">Tanggal Keberangkatan:</label>
        <input type="date" id="tanggal" name="tanggal" required><br><br>

        <label for="kotaAsal">Kota Asal:</label>
        <select id="kotaAsal" name="kotaAsal" required>
            <option value="">Pilih Kota Asal</option>
            <option value="jakarta">Pontianak</option>
            <option value="surabaya">Surabaya</option>
            <option value="bandung">Bandung</option>
        </select><br><br>

        <label for="kotaTujuan">Kota Tujuan:</label>
        <select id="kotaTujuan" name="kotaTujuan" required>
            <option value="">Pilih Kota Tujuan</option>
            <option value="bali">Bali</option>
            <option value="yogyakarta">Yogyakarta</option>
            <option value="medan">Medan</option>
        </select><br><br>

        <label for="kelas">Kelas:</label>
        <input type="radio" id="kelasEkonomi" name="kelas" value="ekonomi" required>
        <label for="kelasEkonomi">Ekonomi</label>
        <input type="radio" id="kelasBisnis" name="kelas" value="bisnis">
        <label for="kelasBisnis">Bisnis</label><br><br>

        <label for="layanan">Layanan Tambahan:</label>
        <input type="checkbox" id="makanan" name="makanan" value="makanan">
        <label for="makanan">Makanan</label>
        <input type="checkbox" id="bagasi" name="layanan" value="bagasi">
        <label for="bagasi">Bagasi</label><br><br>
        <button type="submit">Pesan Tiket</button>
    </form>
    
    <div id="result">
        <h2>Hasil Pemesanan Tiket:</h2>
        <p>Nama: <%= request.getParameter("nama") %></p>
        <p>Tanggal Keberangkatan: <%= request.getParameter("tanggal") %></p>
        <p>Kota Asal: <%= request.getParameter("kotaAsal") %></p>
        <p>Kota Tujuan: <%= request.getParameter("kotaTujuan") %></p>
        <p>Kelas: <%= request.getParameter("kelas") %></p>
        <p>Layanan Tambahan: <%= request.getParameterValues("layanan") != null ? String.join(", ", request.getParameterValues("layanan")) : "" %></p>
    </div>
</body>
</html>