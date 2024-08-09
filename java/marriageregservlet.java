

import jakarta.servlet.ServletException;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class marriageregservlet
 */
public class marriageregservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public marriageregservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String hname=request.getParameter("hname");
		String hplace=request.getParameter("hplace");
		int hage=Integer.parseInt(request.getParameter("hage"));
		String hreligion =request.getParameter("hreligion");

		String wname=request.getParameter("wname");
		String wplace=request.getParameter("wplace");
		int wage=Integer.parseInt(request.getParameter("wage"));
		String wreligion =request.getParameter("wreligion");
		
		String date=request.getParameter("date");
		String venue=request.getParameter("venue");
		
		
		int err=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mini_project";
			Connection con=DriverManager.getConnection(url,"root","");
			
			String sql = "INSERT INTO marriages (hname, hage, hreligion, hplace, wname, wage, wreligion, wplace, venue, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
           PreparedStatement statement = con.prepareStatement(sql);
          
           statement.setString(1, hname);
           statement.setInt(2, hage);
           statement.setString(3, hreligion);
           statement.setString(4, hplace);
           statement.setString(5, wname);
           statement.setInt(6, wage);
           statement.setString(7, wreligion);
           statement.setString(8, wplace);
           statement.setString(9, venue);
           statement.setString(10,date);
			statement.executeUpdate();
			con.close();
			
					
		}
		catch (Exception e ) {	
			out.println(e); 
			out.println("<h3>Error Try Agian</h3>");
			err=1;
		}
	
		if(err==0) {
			response.sendRedirect("registrationSuccess.jsp?success=true");
			//request.getRequestDispatcher("registrationSuccess.jsp").forward(request, response);//
		}
		
		
			
			
			
	
	}

}
