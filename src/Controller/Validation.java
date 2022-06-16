package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Admin;
import java.io.PrintWriter;
/**
 * Servlet implementation class Validation
 */
@WebServlet("/Validation")
public class Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
//		System.out.println("name ="+uname+"\n"+"pass ="+pass);
		boolean flag= new ProductDao().verify(new Admin(uname, pass));
		if(flag){
			response.sendRedirect("adminConsole.jsp");
			System.out.println("The boolean value is :"+flag);
			String str="<script type='text/javascript'>Alert('InValid UserName Or Password')</script>";
			String head="<h1>head 1 is here</h1>";
			PrintWriter pw=response.getWriter();
			pw.write(str);
			pw.close();
			
		}
		else{
			response.sendRedirect("AdminLogin.jsp");
			System.out.println("The boolean value is :"+flag);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
