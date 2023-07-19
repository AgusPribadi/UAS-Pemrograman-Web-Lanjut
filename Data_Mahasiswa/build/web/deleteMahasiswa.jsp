<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    
    try {
    
     String URLdb = "jdbc:mysql://localhost/data_mahasiswa";
     String usernameDB = "root";
     String passwordDB = "";
     Class.forName("com.mysql.jdbc.Driver");
     Connection connection = DriverManager.getConnection(URLdb, usernameDB, passwordDB);
     Statement statement = connection.createStatement();
     
     String query = "DELETE FROM mahasiswa WHERE id=" + id;
     statement.executeUpdate(query);
     response.sendRedirect("readMahasiswa.jsp");
     
    } catch (Exception e) {
     response.sendRedirect("readMahasiswa.jsp");
    }
%>
