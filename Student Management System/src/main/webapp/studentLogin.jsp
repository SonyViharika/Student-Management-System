<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Student Login</h2>
        <form action="studentLogin.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
        <a href="studentSignup.jsp">Student Signup</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                UserDao userDAO = new UserDao();
                User user = userDAO.selectUserByUsernameAndPassword(username, password, "student");
                if (user != null) {
                    session.setAttribute("user", user);
                    response.sendRedirect("viewStudent.jsp");
                } else {
                    out.println("<p>Invalid username or password!</p>");
                }
            }
        %>
    </div>
</body>
</html>
