<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Birth Certificates</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #ddd;
        }
        th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #4CAF51;
            color: white;
        }
    </style>
</head>
<body>
   <center> <h1>Marriage Certificates</h1></center>
    <table>
        <thead>
            <tr>
                <th>Husband Name</th>
                <th>Husband Place</th>
                <th>Husband Age</th>
                <th>Husband Religion</th>
                <th>Wife Name</th>
                <th>Wife Place</th>
                <th>Wife Age</th>
                <th>Wife Religion</th>
                <th>Marriage Date</th>
                <th>Marriage Venue</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection con = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/mini_project";
                    con = DriverManager.getConnection(url, "root", "");
                    //String sql = "SELECT * FROM marriages";
                    String sql = "SELECT hname FROM marriages WHERE wname = 'shahana'";
                    
                    stmt = con.prepareStatement(sql);
                    rs = stmt.executeQuery();

                    while (rs.next()) {
                        String hname = rs.getString("hname");
                        String hplace = rs.getString("hplace");
                        String hage = rs.getString("hage");
                        String hreligion=rs.getString("hreligion");
                        String wname = rs.getString("wname");
                        String wplace = rs.getString("wplace");
                        String wage = rs.getString("wage");
                        String wreligion = rs.getString("wreligion");
                        String date = rs.getString("date");
                        String venue = rs.getString("venue");
             %>
             <tr>
                <td><%= hname %></td>
                <td><%= hplace %></td>
                <td><%= hage %></td>
                <td><%= hreligion %></td>
                <td><%= wname %></td>
                <td><%= wplace %></td>
                <td><%= wage %></td>
                <td><%= wreligion %></td>
                <td><%= date %></td>
                <td><%= venue %></td>
           
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <tr>
                <td colspan="10">An error occurred while fetching the data.</td>
            </tr>
            <%
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                    if (con != null) try { con.close(); } catch (SQLException ignore) {}
                }
            %>
        </tbody>
    </table>
</body>
</html>