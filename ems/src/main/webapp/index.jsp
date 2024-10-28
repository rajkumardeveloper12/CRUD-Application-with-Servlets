<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
<style type="text/css">
	body{
		background-color: silver;
		
		}
	.link button{
		display:flex;
		font-size:20px;
		width: 100px;
		padding: 10px;
		background-color: maroon;
		color: white;
		border-radius: 10px;
		border: none;
		margin: auto;
		margin-bottom: 100px;
		text-align: center;
		
		}
	.link a{
		text-decoration: none;
	}
	.link button:hover{
		background-color: fuchsia;
		color: black;
	}
	.link1 button{
		display:flex;
		width:200px;
		font-size:20px;
		padding: 10px;
		background-color: lime;
		color: white;
		border-radius: 10px;
		border: none;
		margin:auto;
		margin-bottom: 10px;
		text-align: center;
	}
	.link1 a{
		text-decoration: none;
	}
	.link1 button:hover{
		background-color: fuchsia;
		color: black;
	}
	h1{
		font-size: 40px;
		font-style:italic;
		text-align: center;
		margin-bottom: 100px;
	}
</style>
</head>
<body>
	<h1>Welcome Page</h1>
			<div class="link">
				<a href="register.jsp"><button>Register </button></a>
			</div>
			<div class="link1">
				<a href="allemp"><button>View All Employees</button></a>
			</div>
			
	<script type="text/javascript">
		 let msgele=document.getElementById("msg");
		 setTimeout(()=>{
		 msgele.style.display="none";
		 },2000);
</script>
</body>
</html>