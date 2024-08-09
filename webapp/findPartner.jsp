<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
                Connection con = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                boolean performSearch=true;
                String result;
                if(request.getParameter("spouseName")!=null && request.getParameter("search")!=null){performSearch=false;}
       if(performSearch){
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/mini_project";
                    con = DriverManager.getConnection(url, "root", "");
                    String sql;
                    
                    String spouseName=request.getParameter("spouseName");

                    String search=request.getParameter("search");
                    
                    if(search=="husband"){ sql="SELECT hname FROM marriages where wname=? limit 1";}
                    else{ sql="select wname from marriages where hname=? limit 1";}
                    
                    stmt = con.prepareStatement(sql);
                    stmt.setString(
                    rs = stmt.executeQuery();
                    if(!rs.next()){result=null;}
                    	
                }
                catch(Exception e){
                	out.println(e);return;
                }
                
                
                    while (rs.next()) {
                        String childName = rs.getString("child_name");
                        String birthTime = rs.getString("birth_time");
                        String birthPlace = rs.getString("birth_place");
                        String gender = rs.getString("gender");
                        String fatherName = rs.getString("father_name");
                        String motherName = rs.getString("mother_name");
                        String hospitalName = rs.getString("hospital_name");
                        String birthId = rs.getString("birthid");
                        String doctorId = rs.getString("doctorid");
                        String idProof = rs.getString("idproof");
                    }
                        %>




<!DOCTYPE html>
<html>
<head>
  <title>Spouse Search</title>
</head>
<body>

<h1>Spouse Search</h1>

<form action="search-spouse.jsp" method="post">
  <fieldset>
    <legend>Search Criteria</legend>
    <label for="spouseName">Enter Name:</label>
    <input type="text" id="spouseName" name="spouseName" required>
    <br>
    <label for="searchBy">Search :</label>
    <select id="search" name="search" required>
      <option value="husband">Husband</option>
      <option value="wife">Wife</option>
    </select>
  </fieldset>
  <br>
  <button type="submit">Search Spouse</button>
</form>

</body>
</html>