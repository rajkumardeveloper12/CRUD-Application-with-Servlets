package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		double sal=Double.parseDouble(req.getParameter("salary"));
		int dno=Integer.parseInt(req.getParameter("dno"));
		String pass=req.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Graj@123");
			PreparedStatement ps=con.prepareStatement("update emp set name=?,email=?,salary=?,dno=?,password=? where id=?");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setDouble(3, sal);
			ps.setInt(4, dno);
			ps.setString(5, pass);
			ps.setInt(6, id);
			int row=ps.executeUpdate();
			System.out.println(row+" Row Affected...");
			
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1 id=msg>Updated Successfull </h1>"
				+ "</body></html>");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Graj@123");
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery("select * from emp");
			req.setAttribute("rs", rs);
			RequestDispatcher rg=req.getRequestDispatcher("allemp.jsp");
			rg.include(req, resp);
			
			rs.close();
			s.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
