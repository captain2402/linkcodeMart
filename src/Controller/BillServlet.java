package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import javax.servlet.http.HttpSession;

import Model.BillObject;


import Controller.ProductDao;
import Model.Product;

/**
 * Servlet implementation class BillServlet
 */
@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		float total=0;
		float cgst,sgst,finaltotal; 
		HttpSession session=request.getSession();
		
		List<Product> pro=(List<Product>)session.getAttribute("prodlist");
		ProductDao sd=new ProductDao();
		sd.Billingdb(pro);
		List<Product> prd=sd.ReturnBill();
		for(Product p:prd)
		{
			total=total+p.getpPrice();
		}
		cgst=(float) (0.06*total);
		sgst=(float) (0.06*total);
		finaltotal=cgst+sgst+total;
		BillObject b=new BillObject(11, total, finaltotal, cgst, sgst);
		session.setAttribute("fbill", b);
		response.sendRedirect("Bill.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
