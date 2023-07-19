<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Read Mahasiswa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="readMahasiswa.jsp">View Mahasiswa</a>
        <a href="createMahasiswa.jsp">Add Mahasiswa</a>
        <a href="logout.jsp">Logout</a>
    </nav>
    <div class="container">
        <h1 class="text-center">Read Mahasiswa</h1>
        <%
            try {
                String URLdb = "jdbc:mysql://localhost/data_mahasiswa";
                String usernameDB = "root";
                String passwordDB = "";
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(URLdb, usernameDB, passwordDB);
                Statement statement = connection.createStatement();
                
                String query = "SELECT * FROM mahasiswa";
                ResultSet result = statement.executeQuery(query);
        %>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Program Studi</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(result.next()) { %>
                <tr>
                    <td><%= result.getString("id") %></td>
                    <td><%= result.getString("nim") %></td>
                    <td><%= result.getString("nama") %></td>
                    <td><%= result.getString("prodi") %></td>
                    <td>
                        <a href="deleteMahasiswa.jsp?id=<%= result.getString("id") %>"
                           class="btn btn-danger btn-sm">
                            Delete
                        </a>
                        <a href="updateMahasiswa.jsp?id=<%= result.getString("id") %>"
                           class="btn btn-primary btn-sm">
                            Edit
                        </a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="createMahasiswa.jsp" class="btn btn-primary">Tambah Data</a>
        <%
                result.close();
                statement.close();
                connection.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>