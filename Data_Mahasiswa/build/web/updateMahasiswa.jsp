<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Mahasiswa</title>
    <link rel="stylesheet" href="update.css">
    <style>
        
    </style>
</head>
<body>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="readMahasiswa.jsp">View Mahasiswa</a>
        <a href="createMahasiswa.jsp">Add Mahasiswa</a>
    </nav>
    <%
        String id = request.getParameter("id");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/data_mahasiswa",
                "root",
                "");
            String query = "SELECT * FROM mahasiswa WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id);
            ResultSet result = statement.executeQuery();
            
            if (result.next()) {
                String nim = result.getString("nim");
                String nama = result.getString("nama");
                String prodi = result.getString("prodi");
    %>
    <h1>Update Mahasiswa</h1>
    <form action="processUpdateMahasiswa.jsp" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        <div>
            <label for="nim">NIM</label>
            <input type="text" id="nim" name="nim" value="<%= nim %>">
        </div>
        <div>
            <label for="nama">Nama</label>
            <input type="text" id="nama" name="nama" value="<%= nama %>">
        </div>
        <div>
            <label for="prodi">Program Studi</label>
            <input type="text" id="prodi" name="prodi" value="<%= prodi %>">
        </div>
        <button type="submit">Update</button>
    </form>
    <%
            } else {
                out.println("Mahasiswa not found");
            }
            
            result.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>