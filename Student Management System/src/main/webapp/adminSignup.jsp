<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Signup</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Admin Signup</h2>
        <form action="adminSignup.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Signup">
        </form>
        <a href="adminLogin.jsp">Back to Admin Login</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                User newUser = new User();
                newUser.setUsername(username);
                newUser.setPassword(password);
                newUser.setRole("admin");
                UserDao userDao = new UserDao();
                userDao.insertUser(newUser);
                out.println("<p>Admin registered successfully!</p>");
            }
        %>
    </div>
</body>
</html>
