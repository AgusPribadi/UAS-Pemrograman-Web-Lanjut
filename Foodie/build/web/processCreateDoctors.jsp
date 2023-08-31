<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Create Doctor</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        
        if (name != null && address != null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/hospitalxxiv",
                    "root",
                    "");
                String query = "INSERT INTO doctors (id, name, address) VALUES (?,?,?)";
                PreparedStatement statement = connection.prepareStatement(query);

                int randomNumber = (int) (Math.random() * 90) + 10;

                statement.setInt(1, randomNumber);
                statement.setString(2, name);
                statement.setString(3, address);
                int updatedQuery = statement.executeUpdate();
                if (updatedQuery != 0) {
                    response.sendRedirect("readDoctors.jsp");
                } else {
                    out.println("Failed to create doctor");
                }
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>