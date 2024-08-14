<%@ page import="java.util.List" %>
<%@ page import="com.form.Dao.EntityClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>
<style>
	h1{
	 position: relative;
	left: 9%;
	text-decoration: underline;
	
}
    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px auto;
        position: relative;
    	left: 9%;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    
    center{
    
    
    overflow:hidden;
    }
    
    button{
    background-color:grey; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
 
    
    }
    
    
</style>
</head>
<body>
    <%@ include file="sidebar.jsp"%>
    <%@ include file="header.jsp"%>
    <center>
        <h1>The List of Users</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Date of Birth</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% 
                // Fetch the list of users from the request attribute
                List<EntityClass> users = (List<EntityClass>) request.getAttribute("users");

                if (users != null && !users.isEmpty()) {
                    for (EntityClass user : users) {
                %>
                <tr>
                    <td><%= user.getEmployeeId() != null ? user.getEmployeeId() : "N/A" %></td>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getAddress() != null ? user.getAddress() : "N/A" %></td>
                    <td><%= user.getPhone() != null ? user.getPhone() : "N/A" %></td>
                    <td><%= user.getDob() != null ? user.getDob() : "N/A" %></td>
                    <td><button><a href="/edit/<%= user.getEmployeeId() %>">Edit</a></button></td>
                    <td><button><a href="/delete/<%= user.getEmployeeId() %>" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a></button></td>
                </tr>
                <% 
                    }
                } else {
                %>
                <tr>
                    <td colspan="6">No users found.</td>
                </tr>
                <% 
                }
                %>
            </tbody>
        </table>
    </center>
</body>
</html>
