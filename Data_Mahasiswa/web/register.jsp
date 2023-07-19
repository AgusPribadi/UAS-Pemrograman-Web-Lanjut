<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            margin-top: 100px;
        }

        form {
            max-width: 300px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Register</h1>
    <form action="processRegister.jsp" method="post">
        <div>
            <label for="username">Username</label>
            <input type="text" id="username" name="username">
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password">
        </div>
        <div>
            <label for="nama">Nama</label>
            <input type="text" id="nama" name="nama">
        </div>
        <div>
            <label for="email">Email</label>
            <input type="text" id="email" name="email">
        </div>
        <button type="submit">Register</button>
    </form>
    <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <p class="error"><%= errorMessage %></p>
    <%
        }
    %>
</body>
</html>