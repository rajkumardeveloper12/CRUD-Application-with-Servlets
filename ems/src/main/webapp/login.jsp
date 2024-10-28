<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

/* Card styles */
.login-card {
	background-color: wheat;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 300px;
	padding: 20px;
	text-align: center;
}

/* Form styles */
h2 {
	margin-bottom: 20px;
	color: maroon;
	font-size: 35px;
}

.input-container {
	margin-bottom: 15px;
	text-align: left;
}

label {
	font-size: 14px;
	color: #555;
}

input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

input:focus {
	border-color: #007BFF;
	outline: none;
}

/* Button styles */
.button-container {
	margin-top: 20px;
	width: 60%;
	margin: auto;
	border-radius: 10px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #0056b3;
}
.popup{
	display: fixed;
	top:70%;
	left:50%;
}
.link{
	text-decoration: none;
    margin-top: 10px;
}
</style>
</head>
<body>
	<div class="login-card">
		<h2>Login</h2>
		<form action="login" method="post">
			<div class="input-container">
				<label for="username">Username</label> <input type="email"
					id="username" name="email" required>
			</div>
			<div class="input-container">
				<label for="password">Password</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="button-container">
				<button type="submit">Login</button>
			</div>
			<div class="link">
				<p>Don't have Account <a href="register.jsp"> Register </a>here</p>
			</div>
			
		</form>
	</div>
	<script type="text/javascript" class="popup">
		 let msgele=document.getElementById("msg");
		 setTimeout(()=>{
		 msgele.style.display="none";
		 },2000);
</script>
</body>
</html>