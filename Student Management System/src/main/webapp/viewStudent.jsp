<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.example.UserDao, com.example.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Student</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="container">
        <h1>Student Details</h1>
        <%
            // Retrieve student ID from the request
            String studentId = request.getParameter("id");
            UserDao userDao = new UserDao();
            User user = null;
            
            if (studentId != null && !studentId.isEmpty()) {
                int id = Integer.parseInt(studentId);
                
            }
        %>
        <%
            if (user != null) {
        %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <td><%= user.getId() %></td>
                </tr>
                <tr>
                    <th>Username</th>
                    <td><%= user.getUsername() %></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><%= user.getPassword() %></td>
                </tr>
            </table>
        <%
            } else {
        %>
            <p>No student found with the provided ID.</p>
        <%
            }
        %>
        <br>
        <a href="listStudents.jsp">Back to Student List</a>
    </div>
</body>
</html>
