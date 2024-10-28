<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* Global styles */
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            /* background-color: #f0f0f0; */
            font-family: Arial, sans-serif;
        }

        /* Style the register card */
        .register-card {
            background-color: rgb(248, 176, 108);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 32%;
        }

        /* Style for the form headings */
        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Input fields */
        input {
            width: 93%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        /* Button style */
        button {
            width: 50%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 10px;
            margin-left: 100px;
        }
        button:hover {
            background-color: #0056b3;
        }
        h2{
        font-size: 35px;
        font-style:oblique;
        text-align: center;
        color: teal;
        }
    </style>
</head>
<body>
	<h2><%= session.getAttribute("name") %></h2>
    <div class="register-card">
        <h2>Register</h2>
        <form action="register" method="post">
        	<div class="input-container">
                <label for="id">Id</label>
                <input type="text" id="id" name="id" placeholder="Enter Id" required>
            </div>
            <div class="input-container">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter Name" required>
            </div>
            <div class="input-container">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="input-container">
                <label for="salary">Salary</label>
                <input type="text" id="salary" name="salary" placeholder="Enter Salary" required>
            </div>
            <div class="input-container">
                <label for="deptno">Dept No</label>
                <input type="text" id="dno" name="deptno" placeholder="Enter Dept Number" required>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
            </div>
            <div class="button-container">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
</body>
</html>