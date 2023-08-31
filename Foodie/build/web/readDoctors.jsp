<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Read Doctors</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="text-center">Read Doctors</h1>
        <%@page import="java.sql.*" %>
        
        <%
            try {
                String URLdb = "jdbc:mysql://localhost/hospitalxxiv";
                String usernameDB = "root";
                String passwordDB = "";
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection(URLdb, usernameDB, passwordDB);
                Statement statement = connection.createStatement();
                
                String query = "SELECT * FROM doctors";
                ResultSet result = statement.executeQuery(query);
        %>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% while(result.next()) { %>
                <tr>
                    <td><%= result.getString("name") %></td>
                    <td><%= result.getString("address") %></td>
                    <td>
                        <a href="deleteDoctors.jsp?id=<%= result.getString("id") %>"
                           class="btn btn-danger btn-sm">
                            Delete
                        </a>
                           <a href="updateDoctors.jsp?id=<%= result.getString("id") %>"
                           class="btn btn-primary btn-sm">
                            Edit
                        </a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="createDoctors.jsp" class="btn btn-primary">Tambah Data</a>
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