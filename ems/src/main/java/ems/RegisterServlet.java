package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet{
	public RegisterServlet() {
		System.out.println("Constructor is done");
	}
	@Override
	public void init() throws ServletException {
		System.out.println("init() is done");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String salary=req.getParameter("salary");
		String dno=req.getParameter("deptno");
		String pass=req.getParameter("password");
		System.out.println(id);
		System.out.println(name);
		System.out.println(email);
		System.out.println(salary);
		System.out.println(dno);
		System.out.println(pass);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Graj@123");
			PreparedStatement ps=con.prepareStatement("insert into emp values(?,?,?,?,?,?)");
			ps.setInt(1,Integer.parseInt(id));
			ps.setString(2,name);
			ps.setString(3, email);
			ps.setDouble(4,Double.parseDouble(salary));
			ps.setInt(5,Integer.parseInt(dno));
			ps.setString(6, pass);
			int row=ps.executeUpdate();
			System.out.println(row+" Rows Affected....");
			ps.close();
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter pw=resp.getWriter();
		pw.write("<html><body><h1 id=msg>Registered Successfull </h1>"
//				+"<button><a href=register.jsp>Register</a></button>"
				+ "</body></html>");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		rd.include(req, resp);
	}
	@Override
	public void destroy() {
		System.out.println("destroy done...");
	}
}
