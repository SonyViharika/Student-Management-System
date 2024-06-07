<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Update Student</h2>
        <form action="updateStudent.jsp" method="post">
            <input type="text" name="id" placeholder="ID" required>
            <input type="text" name="username" placeholder="New Username" required>
            <input type="password" name="password" placeholder="New Password" required>
            <input type="submit" value="Update">
        </form>
        <a href="adminDashboard.jsp">Back to Dashboard</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                int id = Integer.parseInt(request.getParameter("id"));
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                User updatedUser = new User();
                updatedUser.setId(id);
                updatedUser.setUsername(username);
                updatedUser.setPassword(password);
                UserDao userDAO = new UserDao();
                userDAO.updateUser(updatedUser);
                out.println("<p>Student updated successfully!</p>");
            }
        %>
    </div>
</body>
</html>
