<%-- 
    Document   : register
    Created on : May 16, 2023, 12:49:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>
    </head>
    <body>
        <h1>Welcome to Foodie</h1>
        <p>Fill out the form to get started</p>
        <form action="profile.jsp" method="get">
            <label for="userName">Username
                <input type="text" name="userName" id="userName">
            </label>
            <label for="passWord">Password
                <input type="password" name="passWord" id="passWord">
            </label>
            <input type="checkbox" id="agree" name="agree" value="yes" checked>
                <label for="agree"> By submitting this form I have read and acknowledge the privacy policy</label>
            <input type="submit" value="Register" />
        </form>
    </body>
</html>
