<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Create Mahasiswa</title>
</head>
<body>
    <%
        String nim = request.getParameter("nim");
        String nama = request.getParameter("nama");
        String prodi = request.getParameter("prodi");
        
        if (nim != null && nama != null && prodi != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/data_mahasiswa",
                    "root",
                    "");
                String query = "INSERT INTO mahasiswa (nim, nama, prodi) VALUES (?,?,?)";
                PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

                statement.setString(1, nim);
                statement.setString(2, nama);
                statement.setString(3, prodi);
                int updatedQuery = statement.executeUpdate();
                
                if (updatedQuery != 0) {
                    ResultSet generatedKeys = statement.getGeneratedKeys();
                    if (generatedKeys.next()) {
                        int insertedId = generatedKeys.getInt(1);
                        response.sendRedirect("readMahasiswa.jsp?id=" + insertedId);
                    } else {
                        out.println("Failed to retrieve inserted ID");
                    }
                } else {
                    out.println("Failed to create mahasiswa");
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