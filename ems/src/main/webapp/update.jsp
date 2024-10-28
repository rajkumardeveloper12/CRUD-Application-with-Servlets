<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
        /* Global styles */
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        /* Style the register card */
        .register-card {
            background-color: rgb(105, 248, 73);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 32vw;
            margin : auto;
            margin-left : 32%;
        }
        .head{
        	text-align: center;
        }

        /* Style for the form headings */
        h2 {
            margin-bottom: 10px;
            color: teal;
            font-size: 30px;
            font-style: oblique;
            
        }

        /* Input fields */
        input {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        /* Button style */
        button {
            width: 50%;
            margin:auto;
            padding: 10px;
            background-color: #007BFF;
            margin-left:100px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%    
ResultSet rs= (ResultSet)request.getAttribute("rs");
%>

    <div class="register-card">
        <div class="head">
        	<h2><%= session.getAttribute("name") %></h2>
        	<h2>Update Page</h2>
        </div>
        <form action="update" method="post">
            <div class="input-container">
                <label for="id">Id</label>
                <input value="<%=rs.getInt(1) %>" type="number"  name="id" placeholder="Enter id" required>
            </div>
            <div class="input-container">
                <label for="name">Name</label>
                <input value="<%=rs.getString(2) %>" type="text"  name="name" placeholder="Enter Name" required>
            </div>
            <div class="input-container">
                <label for="email">Email</label>
                <input value="<%=rs.getString(3) %>" type="text"  name="email" placeholder="Enter Email" required >
            </div>
            <div class="input-container">
                <label for="salary">Salary</label>
                <input value="<%=rs.getDouble(4) %>" type="text"  name="salary" placeholder="Enter salary" required>
            </div>
            <div class="input-container">
                <label for="dno">Dno</label>
                <input value="<%=rs.getInt(5) %>" type="number"  name="dno" placeholder="Enter Dept number" required>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input  value="<%=rs.getString(6) %>" type="password"  name="password" placeholder="Enter password" required >
            </div>
            
            <div class="button-container">
                <button type="submit">Update</button>
            </div>
        </form>
        
    </div>
    
</body>
</html>