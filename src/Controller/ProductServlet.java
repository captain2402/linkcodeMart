package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.Product;
import java.util.*; 
/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LinkedList<Product> pr=new LinkedList<Product>();
	ProductDao sd=new ProductDao(); 
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id=request.getParameter("pId");
		String pName=request.getParameter("pName");
		String pPrice=request.getParameter("pPrice");
		String pCat=request.getParameter("pCat");
		int pId=Integer.parseInt(Id);
		float pPr=Float.parseFloat(pPrice);

		Product p=new Product(pId, pName, pPr,pCat);
		pr.add(p);
		sd.Billingdb(pr);
		sd.ProductLList("Bill123", pr);
		HttpSession session=request.getSession();
		session.setAttribute("prodlist", pr);
	
		PrintWriter pw=response.getWriter();
		response.sendRedirect("insert.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
