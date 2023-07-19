<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<% 
    // Hapus informasi login pengguna dari sesi
    session.invalidate();
    // Redirect pengguna ke halaman login
    response.sendRedirect("login.jsp");
%>