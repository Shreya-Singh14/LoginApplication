<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<style>

	div{
	
	text-align: left;
    padding-bottom: 8px;
    font-weight: 500;
	}
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        color: #333;
    }
    center {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
    }
    
    
    h1 {
        color: #444;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 600px;
        position: absolute;
    	left: 34%;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="date"],
    input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    #msg {
        display: block;
        color: red;
        font-weight: bold;
        margin-top: 10px;
    }
</style>

<script>
    function validateForm(event) {
        // Prevent the default form submission
        event.preventDefault();

        // Get form elements 
        var user = document.getElementById('user').value;
        var email = document.getElementById('email').value;
        var password = document.getElementById('pass').value;
        var conpass = document.getElementById('conpass').value;

        // Check if any required field is empty
        if (user === "" || email === "" || password === "" || conpass === "") {
            document.getElementById('msg').textContent = 'Please fill out all required fields.';
            document.getElementById('msg').style.display = 'block';
        } else if (password !== conpass) {
            // Check if passwords match, agar nhi kr rha then diaplay appropriate msg
            document.getElementById('msg').textContent = 'Passwords do not match.';
            document.getElementById('msg').style.display = 'block';
        } else {
            // If everything is okay, submit the form
            document.getElementById('msg').textContent = 'You have Signed Up successfully';
            document.getElementById('msg').style.display = 'block';
            document.getElementById('signupForm').submit();
           
            // window.location.href = '/loggedIn';
        }
    }
</script>


</head>
<body>
<%@ include file="sidebar.jsp"%>
<%@ include file="header.jsp"%>
<center>
    <form id="signupForm" action="/signup" method="post" onsubmit="validateForm(event)">
    	<h1>Create New User</h1>
        <div>Username:</div> <input id="user" name="username" type="text" placeholder="Enter username" required><br><br>
        <div>Email:</div><input id="email" name="email" type="email" placeholder="Enter email" required><br><br>
        <div>Password:</div><input id="pass" name="password" type="password" placeholder="Enter password" required><br><br>
        <div>Confirm Password:</div> <input id="conpass" name="confirmpassword" type="password" placeholder="Re-enter password" required><br><br>
        <div>Employee ID:</div> <input id="eid" name="eid" type="text" placeholder="Enter Employee ID"><br><br>
        <div>Address:</div> <input id="address" name="address" type="text" placeholder="Enter address"><br><br>
        <div>Phone Number:</div> <input id="phone" name="phone" type="tel" placeholder="Enter phone number"><br><br>
        <div>Date of Birth:</div> <input id="dob" name="dob" type="date" placeholder="Enter date of birth"><br><br>
        <input type="submit" value="Sign Up">
        <div id="msg"></div>
    </form>
    </center>
</body>
</html>
