<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Update Mahasiswa</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
        String nim = request.getParameter("nim");
        String nama = request.getParameter("nama");
        String prodi = request.getParameter("prodi");

        if (id != null && nim != null && nama != null && prodi != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/data_mahasiswa",
                    "root",
                    "");
                String query = "UPDATE mahasiswa SET nim=?, nama=?, prodi=? WHERE id=?";
                PreparedStatement statement = connection.prepareStatement(query);
                statement.setString(1, nim);
                statement.setString(2, nama);
                statement.setString(3, prodi);
                statement.setString(4, id);
                int updatedQuery = statement.executeUpdate();

                if (updatedQuery != 0) {
                    response.sendRedirect("readMahasiswa.jsp?id=" + id);
                } else {
                    out.println("Failed to update mahasiswa");
                }
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            out.println("Incomplete data");
        }
    %>
</body>
</html>