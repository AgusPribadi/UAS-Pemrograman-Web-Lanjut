<%-- 
    Document   : profile
    Created on : May 16, 2023, 12:49:09 PM
    Author     : User
--%>
<%@page import="main.User"%>
<%@page import="main.UserIO"%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
 <title>JSP Page</title>
</head>
<body>
<%
 String userName = request.getParameter("userName");
 String passWord = request.getParameter("passWord");
 String agree = request.getParameter("agree");
 
 String agreeMessage = "";
 if(agree != null) {
        agreeMessage = "Thank you for registering with Foodie";
    } else {
        agreeMessage = "Sorry, you need to agree with our ToC";
    }
    
    ServletContext sc = this.getServletContext();
    String path = sc.getRealPath("/WEB-INF/userList.txt");
    
    User user = new User(userName, passWord);
    UserIO.create(user, path);
%>
 <h1>Basic Info</h1>
 <p>Username: <%= userName%></p>
 <p>Password: <%= passWord%></p>
 <p><%= agreeMessage %></p>
</body>
</html>
