<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    
    if (id != null){
        try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost/hospitalxxiv",
                "root",
                ""
                );
                
                String query = "UPDATE doctors SET id=?, name=?, address=? WHERE id=" + id + "";
                PreparedStatement statement = connection.prepareStatement(query);
                
                statement.setString(1, id);
                statement.setString(2, name);
                statement.setString(3, address);
                
                int i = statement.executeUpdate();
                if (i != 0) { response.sendRedirect("readDoctors.jsp");
                 }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
    }
    %>
