<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Mahasiswa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="create.css">
    <style>
        
    </style>
</head>
<body>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="readMahasiswa.jsp">View Mahasiswa</a>
        <a href="createMahasiswa.jsp">Add Mahasiswa</a>
    </nav>
    <div class="container">
        <div>
            <h1 class="text-center">Create Mahasiswa</h1>
            <form action="processCreateMahasiswa.jsp" method="post">
                <div class="mb-3">
                    <label class="form-label">NIM</label>
                    <input type="text" class="form-control" name="nim">
                </div>
                <div class="mb-3">
                    <label class="form-label">Nama</label>
                    <input type="text" class="form-control" name="nama">
                </div>
                <div class="mb-3">
                    <label class="form-label">Program Studi</label>
                    <input type="text" class="form-control" name="prodi">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>