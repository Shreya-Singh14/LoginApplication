
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged In</title>
<style>
.main-content {
	margin-left: 230px; /* Adjust to sidebar width */
	padding: 20px;
}
.image-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
    }
    .image-grid img {
        width: 200px;
        height:auto}


</style>
</head>
<body>
	<%@ include file="sidebar.jsp"%>
	<%@ include file="header.jsp"%>
	<center>
	<div class="content">
		<h1>Hello, You have successfully logged in!</h1>
		
		

	</div>
	</center>
	<div class="image-grid">
    <img src="https://t3.ftcdn.net/jpg/06/29/24/26/360_F_629242689_OxQVUp3sdWguHQjZINTkbtwRRvEi4dWy.jpg" alt="Beach">
    <img src="https://i.pinimg.com/564x/35/e9/94/35e9940f6b40949434cc229f4bb5cb0e.jpg" alt="Mountain">
    <img src="https://t4.ftcdn.net/jpg/02/55/17/43/360_F_255174366_ojDuATz84e5h7lIlxh2moUJa9Kpd5wKk.jpg" alt="Forest">
</div>

</body>
</html>
