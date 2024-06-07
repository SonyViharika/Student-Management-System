<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="adminLogin.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
        <a href="adminSignup.jsp">Admin Signup</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                UserDao userDao = new UserDao();
                User user = userDao.selectUserByUsernameAndPassword(username, password, "admin");
                if (user != null) {
                    session.setAttribute("user", user);
                    response.sendRedirect("adminDashboard.jsp");
                } else {
                    out.println("<p>Invalid username or password!</p>");
                }
            }
        %>
    </div>
</body>
</html>
