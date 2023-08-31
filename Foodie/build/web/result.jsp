<!DOCTYPE html>
<html>
<head>
    <title>Hasil Pemesanan Tiket</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        p {
            margin-bottom: 10px;
        }

        .result-section {
            margin-bottom: 20px;
        }

        .result-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Hasil Pemesanan Tiket:</h1>

    <div class="result-section">
        <p class="result-label">Nama:</p>
        <p><%= request.getParameter("nama") %></p>
    </div>

    <div class="result-section">
        <p class="result-label">Tanggal Keberangkatan:</p>
        <p><%= request.getParameter("tanggal") %></p>
    </div>

    <div class="result-section">
        <p class="result-label">Kota Asal:</p>
        <p><%= request.getParameter("kotaAsal") %></p>
    </div>

    <div class="result-section">
        <p class="result-label">Kota Tujuan:</p>
        <p><%= request.getParameter("kotaTujuan") %></p>
    </div>

    <div class="result-section">
        <p class="result-label">Kelas:</p>
        <p><%= request.getParameter("kelas") %></p>
    </div>

    <div class="result-section">
        <p class="result-label">Layanan Tambahan:</p>
        <p><%= request.getParameterValues("layanan") != null ? String.join(", ", request.getParameterValues("layanan")) : "" %></p>
    </div>
</body>
</html>
