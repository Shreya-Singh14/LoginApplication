<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navigation Bar</title>
</head>
<style >
button{



 background-color:grey; 
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
 
  
}
	a{
	
	text-decoration:none;
			color:white;
			font-weight:400;
	}
	
	li{
			list-style: none; 
			display: inline-block;
			
			
			}
	.navbar{
			background: tomato; padding-right: 15px;padding-left: 15px;
		}
			
	.navdiv{
			display: flex; 
			 align-items: center; 
			justify-content: space-between;
			
			}
			.logo{
			text-decoration:none;
			
			font-weight:600;
			color:white;
			position: relative;
    		left: 20%;
			
			
			
			}
			
</style>
<body>
	<nav class="navbar">
	<div class="navdiv">
	<div class="logo">
		<a href="#">REGISTRATION</a>
	
		</div>
		<ul>
		<li> <button><a href="/loggedIn">HOME</a></button></li>
		<li> <button><a href="https://www.ftc.gov/system/files/attachments/cybersecurity-small-business/cybersecuirty_sb_factsheets_all.pdf"target="_blank">ABOUT</a></li></button>
		<li> <button><a href="/profile">PROFILE</a></li></button>
		<li><button> <a href="/login">LOGOUT</a></li></button>
		</ul>
		</div>
		</nav>

</body>
</html>