<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- <link rel="html-import" href="header.html" > -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Knotted Hearts Registry</title> - Dashboard</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px; /* Adjust width as needed */
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 1.8em;
        }

        .welcome {
            color:#fe0c0c ; /* Green color for Birth Archives */
        }

        .actions {
            display: flex;
            gap: 10px;
        }

        .actions a {
            background-color: #2AA72A;
             /* Green color for Birth Archives */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .actions a:hover {
            background-color: #fe0c0cbc;
        }
    </style>
</head>

  
<body>
    <div data-include="header.html"></div>
    <div class="container">
        <div class="header">
          <img src="resources/logo_cut.png-removebg-preview.png" alt="Marriage Registration Logo" class="logo"> 
            <h1>Knotted Hearts Registry</h1>
            <h2 class="welcome"><br>Welcome, ${user.fname}!</h2>  </div>
        <div class="content">
            <p>Manage your Marriage certificates and register new ones easily.</p>
            <div class="actions">
                <!-- <a href="#">View Existing Certificates</a--> <a href="marriageReg.jsp">Register a New Marriage</a>
                <a href="showCertificate.jsp">View Existing Certificates</a>  </div> 
        </div>
    </div>
</body>
</html>