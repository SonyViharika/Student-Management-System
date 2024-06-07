<%@ page import="com.example.UserDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Student</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h2>Delete Student</h2>
        <form action="deleteStudent.jsp" method="post">
            <input type="text" name="id" placeholder="ID" required>
            <input type="submit" value="Delete">
        </form>
        <a href="adminDashboard.jsp">Back to Dashboard</a>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                int id = Integer.parseInt(request.getParameter("id"));
                UserDao userDao = new UserDao();
                userDao.deleteUser(id);
                out.println("<p>Student deleted successfully!</p>");
            }
        %>
    </div>
</body>
</html>
