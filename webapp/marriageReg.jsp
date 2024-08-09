<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marriage Registration</title>
    <style>
        /* Add your styles here */
        body {
            font-family: sans-serif;
            margin: 0; /* Remove default margin */
            display: flex; /* Enable flexbox layout */
            min-height: 100vh; /* Set minimum height for full viewport */
            flex-direction: column; /* Stack elements vertically */
        }
        .header {
            display: flex; /* Allow logo and heading to be side-by-side */
            align-items: center; /* Align logo and heading vertically */
            padding: 1rem; /* Add some padding for spacing */
            background: rgb(87,53,17);
background: linear-gradient(90deg, rgba(87,53,17,1) 0%, rgba(11,9,34,1) 79%);
            
        }
        
        .logo {
            width: 100px; 
            /* Add logo image styles here (e.g., width, height) */
        }
        .heading {
            margin-left: 1rem; /* Add some margin between logo and heading */
            font-size: 1.5rem;
            flex: 1;
            text-align: center; 
            color:white;/* Adjust heading font size */
             font-family: 'Times New Roman', Times, serif Century Schoolbook, TeX Gyre Schola, serif;
        }
        .container {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 4px;
            width: 500px; /* Adjust width as needed */
            margin: auto; /* Center the container horizontally */
            flex: 1; /* Allow container to fill remaining space */
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input, select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            margin-bottom: 15px;
        }
        .button {
            background-color: rgb(5, 244, 5);
            color: green;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .logo_name{
            color:white;

        }
        
        
    
        
    </style>
</head>
<body>
    <header class="header">
        
        <img src="resources/logo_cut.png-removebg-preview.png" alt="Marriage Registration Logo" class="logo"> <p class="logo_name">Knotted Hearts<br> Registry</p><h1 class="heading">Marriage Registration</h1>
    </header>
    <div class="container">
    <form action='./marriageregservlet' method='post'>
        <h2>Husband Information</h2>
        <label for="husband_first_name">Name:</label>
        <input type="text" id="husband_first_name" name="hname" required>


        <label for="husband_residence">Place:</label>
        <input type="text" id="husband_residence" name="hplace" required>

        <label for="husband_dob">Age:</label>
        <input type="number" min="21" id="husband_age" name="hage" required>
        
        <label for="wife_dob">Religion:</label>
        <input type="text" id="wife_dob" name="hreligion" required>
        

        <h2>Wife Information</h2>
        <label for="wife_first_name">Name:</label>
        <input type="text" id="wife_first_name" name="wname" required>

      
        <label for="wife_residence">Place:</label>
        <input type="text" id="wife_residence" name="wplace" required>

        <label for="wife_dob">Age:</label>
        <input type="number" min='18' id="wife_dob" name="wage" required>
 		<label for="wife_dob">Religion:</label>
        <input type="text" id="wife_dob" name="wreligion" required>

        <h2>Marriage Details</h2>
        <label for="marriage_date">Date of Marriage:</label>
        <input type="date" id="marriage_date" name="date" required>

        <label for="marriage_date">Venue:</label>
        <input type="text" id="location_name" name="venue" required>


        <button type="submit">Register Marriage</button>
		</form>    
    </div>
</body>
</html>
