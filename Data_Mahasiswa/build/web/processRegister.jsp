<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Register</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nama = request.getParameter("nama");
        String email = request.getParameter("email");

        if (username != null && password != null && nama != null && email != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/data_mahasiswa",
                    "root",
                    "");
                String query = "INSERT INTO users (username, password, nama, email) VALUES (?, ?, ?, ?)";
                PreparedStatement statement = connection.prepareStatement(query);
                statement.setString(1, username);
                statement.setString(2, password);
                statement.setString(3, nama);
                statement.setString(4, email);
                int updatedRows = statement.executeUpdate();

                if (updatedRows > 0) {
                    // Registrasi berhasil
                    response.sendRedirect("login.jsp"); // Ubah "login.jsp" dengan halaman login yang sesuai
                } else {
                    // Registrasi gagal
                    String errorMessage = "Failed to register user";
                    request.setAttribute("errorMessage", errorMessage);
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }

                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // Jika ada data yang kosong
            String errorMessage = "Please fill in all fields";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    %>
</body>
</html>