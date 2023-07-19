<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Login</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/data_mahasiswa",
                    "root",
                    "");
                String query = "SELECT * FROM users WHERE username = ? AND password = ?";
                PreparedStatement statement = connection.prepareStatement(query);
                statement.setString(1, username);
                statement.setString(2, password);
                ResultSet result = statement.executeQuery();

                if (result.next()) {
                    // Login berhasil
                    // Disini Anda dapat menyimpan informasi login pengguna dalam sesi atau melakukan tindakan lain yang diperlukan
                    response.sendRedirect("readMahasiswa.jsp"); // Ubah "home.jsp" dengan halaman beranda yang sesuai
                } else {
                    // Login gagal
                    String errorMessage = "Invalid username or password";
                    request.setAttribute("errorMessage", errorMessage);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }

                result.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // Jika username atau password kosong
            String errorMessage = "Please enter username and password";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    %>
</body>
</html>