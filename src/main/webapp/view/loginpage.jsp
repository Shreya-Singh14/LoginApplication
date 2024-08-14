<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login_Page</title>
</head>
<body>



<style>
div{
	
	text-align: left;
    padding-bottom: 8px;
    font-weight: 500;
	}

body {
        
        background-image: url("https://media.glassdoor.com/l/8a/35/68/bf/workfloor.jpg" ); 
        background-repeat:no-repeat;
        background-size:cover;
        color: black;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;

    }

    center {
         /* background-color: beige;  */
        color: darkblue; 
        padding: 20px;
        border-radius: 8px;
        width: 100%;
        max-width: 400px; 
        text-align: center; 
        
        
    }
    h1 {
        color: purple; 
        margin-bottom: 20px;
    }

    form {
        position: relative;
    	left: -17%;
        background-color: #fff;
        padding: 80px;
        border-radius: 18px;
        /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
        width: 100%;
        max-width: 1000px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: blue; 
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
       
    }

    
    }

</style>
		<center>
	<form action="/trylogin" method="post">
			<h1>USER LOGIN</h1><br>
			<c:if test="${not empty error}">
            <div style="color: red; margin-top: 10px;">${error}</div>
        	</c:if>
			<div>Username:</div><input id="user" name="username" type="text" placeholder="Enter your username" required><br> <br>
			<div>Password:</div><input id="pass" name= "password" type="password" placeholder="Enter password" required><br> <br> 
			<input type="submit" value="Login">
			
			

			

	</form>
		</center>


</body>
</html>