<%-- 
    Document   : proses
    Created on : May 23, 2023, 5:30:24 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Proses Pemesanan</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Proses Pemesanan</h1>
    <%-- Import class Pemesanan --%>
    <%@ page import="main.Pemesanan" %>
    <%
        // Membaca data dari formulir
        String nama = request.getParameter("nama");
        String email = request.getParameter("email");
        String alamat = request.getParameter("alamat");
        String produk = request.getParameter("produk");
        int jumlah = Integer.parseInt(request.getParameter("jumlah"));
        double diskon = Double.parseDouble(request.getParameter("diskon"));

        // Membuat objek Pemesanan
        Pemesanan pemesanan = new Pemesanan();
        pemesanan.setNama(nama);
        pemesanan.setEmail(email);
        pemesanan.setAlamat(alamat);
        pemesanan.setProduk(produk);
        pemesanan.setJumlah(jumlah);
        pemesanan.setDiskon(diskon);

        double hargaProduk = 100.0; // Harga produk (contoh)
        double totalHarga = hargaProduk * jumlah;

        double diskonPersen = diskon / 100.0;
        double diskonHarga = totalHarga * diskonPersen;
        double totalHargaSetelahDiskon = totalHarga - diskonHarga;
    %>
    
    <p>Terima kasih, <strong><%= pemesanan.getNama() %></strong>, telah melakukan pemesanan.</p>
    <p>Kami akan mengirim produk <strong><%= pemesanan.getProduk() %></strong> sebanyak <strong><%= pemesanan.getJumlah() %></strong> buah ke alamat berikut:</p>
    <p><%= pemesanan.getAlamat() %></p>
    
    <p>Total Harga: <%= totalHarga %></p>
    <p>Diskon: <%= diskonHarga %></p>
    <p>Total Harga Setelah Diskon: <%= totalHargaSetelahDiskon %></p>
</body>
</html>
