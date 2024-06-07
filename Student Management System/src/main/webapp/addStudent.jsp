<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Add Student</h2>
        <form action="addStudent.jsp" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Add">
        </form>
        <a href="adminDashboard.jsp">Back to Dashboard</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                User newUser = new User();
                newUser.setUsername(username);
                newUser.setPassword(password);
                newUser.setRole("student");
                UserDao userDao = new UserDao();
                userDao.insertUser(newUser);
                out.println("<p>Student added successfully!</p>");
            }
        %>
    </div>
</body>
</html>
