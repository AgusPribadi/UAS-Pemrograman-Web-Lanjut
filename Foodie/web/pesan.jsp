<%-- 
    Document   : pesan
    Created on : May 23, 2023, 5:29:50 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulir Pemesanan</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Formulir Pemesanan</h1>
    <form action="proses.jsp" method="POST">
        <label for="nama">Nama:</label>
        <input type="text" name="nama" id="nama" required>
        
        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        
        <label for="alamat">Alamat:</label>
        <textarea name="alamat" id="alamat" required></textarea>
        
        <label for="produk">Produk:</label>
        <select name="produk" id="produk" required>
            <option value="">Pilih Produk</option>
            <option value="Produk A">Produk A</option>
            <option value="Produk B">Produk B</option>
            <option value="Produk C">Produk C</option>
        </select>
        
        <label for="jumlah">Jumlah:</label>
        <input type="number" name="jumlah" id="jumlah" required>

        <label for="diskon">Diskon (%):</label>
        <input type="number" name="diskon" id="diskon" min="0" max="100" value="0">
        
        <input type="submit" value="Pesan">
    </form>
</body>
</html>
