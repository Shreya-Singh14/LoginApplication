<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <style>
        body {
            
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGW5199g6Cwxd8ELud6ewyJSmU_IENZOQl-Q&s");
            background-repeat:no-repeat;
       		 background-size:cover;
            
            color: black;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            max-width: 800px;
            margin: 0 auto;
           
            padding: 20px;
            text-align: center;
		    width: 100%;
		    background-color: aliceblue;
		    position: relative;
		    left: 17%;
            margin: 10% 10%;
            border-radius: 8px;
           
        }
        
        .profile-info {
		    margin-bottom: 20px;       
		    width: 35%;
		    text-align: left;
		    position: relative;
		    left: 30%;

        }
        .profile-info label {
            font-weight: bold;
            
        }
        .profile-info li {
            margin: 12px 12px;
        }
        
    </style>
</head>
<body>
    <%@ include file="sidebar.jsp"%>
    <%@ include file="header.jsp"%>
    <div class="container">
        <h1>My Profile Page</h1>
        <div class="profile-info">
        <ol type='A'>
            <li><label>User name:</label> ${user.username}</li>
            <li><label>Email:</label> ${user.email}</li>
            <li><label>Phone Number:</label> ${user.phone}</li>
            <li><label>Address:</label> ${user.address}</li>
            <li><label>Date of Birth:</label> ${user.dob}</li>
            </ol>
        </div>
        
    </div>
</body>
</html>
