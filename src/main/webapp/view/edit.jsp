
<%@ page import="com.form.Dao.EntityClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
<style>
   
    center {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
    }
    h1 {
        color: black;
    }
    form {
        background-color:beige;
        padding: 20px;
        
        
        width: 80%;
        max-width: 600px;
    }
    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }
    input[type="text"],
    input[type="email"],
    input[type="date"],
    input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
   
</style>

</head>
<body>
<%@ include file="sidebar.jsp"%>
<%@ include file="header.jsp"%>
<center>
    <h1>Edit User</h1>
    <form action="/update" method="post">
        <input type="hidden" name="employeeId" value="${user.employeeId}" />
        <label>Username:</label> <input type="text" name="username" value="${user.username}" /><br/><br/>
        <label>Email:</label> <input type="text" name="email" value="${user.email}" /><br/><br/>
        <label>Address:</label> <input type="text" name="address" value="${user.address}" /><br/><br/>
        <label>Phone:</label> <input type="text" name="phone" value="${user.phone}" /><br/><br/>
        <label>Date of Birth:</label> <input type="text" name="dob" value="${user.dob}" /><br/><br/>
        <button type="submit">Save Changes</button>
    </form><br/>
    <a href="/allusers">Back to List</a>
    </center>
</body>
</html>
