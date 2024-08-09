<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Everlasting Love - Login</title>
    <style>
        /* Add your styles here */
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url("path/to/your/background.jpg");  /* Replace with image path */
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        form {
             display: flex;
      flex-direction: column;
      gap: 1rem;
            
        }
        form label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            margin-bottom: 1rem;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
         
    
        .forgot-password {
            text-align: right;
            margin-bottom: 1rem;
        }
        .forgot-password a {
            color: #ccc;
            text-decoration: none;
        }
        header {
        display: flex;
        justify-content: center;
       align-items: center;
      padding: 1rem 0;
      background: rgb(87,53,17);
      background: linear-gradient(90deg, rgba(87,53,17,1) 0%,      rgba(11,9,34,1) 79%);
                 
    }
    .logo_name{
      color:white;
      font-family: sans-serif;
    }

    </style>
</head>
<body>
    <form action="loginservlet" method="post"><header>
        <img src="resources/logo_cut.png-removebg-preview.png" alt="Everlasting Love Logo">
        <h2 class="logo_name">Knotted Hearts<br>Registry -<br> Login</h2></header>
        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <div class="forgot-password">
            <a href="#">Forgot Password?</a>
        </div>

        <button type="submit">Login</button>
        <p>Don't have an account? <a href="trialsign.html">Sign Up Here</a></p>
    </form>
</body>
</html>
