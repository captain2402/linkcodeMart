<%@ page import = "Model.Product" %>
<%@ page import = "Controller.ProductDao" %>
<%@ page import = "Controller.inventoryServlet" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
</head>
<body>
<%
	List<Product> prd=new ProductDao().ReturnBill();	
	//prd=sd.ReturnBill();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminConsole.jsp">Admin Console</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="insert.jsp">Insert</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link" href="update.jsp">Update</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="delete.jsp">Delete</a>
        </li>
      </ul>
      <form action="inventoryServlet" class="d-flex">
        <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<div class="container">
<table class="table my-3 table-secondary table-striped">
  <thead>
    <tr>
      <th scope="col">Prodcut Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Price</th>
      <th scope="col">Product Category</th>
    </tr>
  </thead>
  <tbody>
    <tr>
		<%for(Product p:prd){ %>
			<td><%=p.getpId()%></td>
			<td><%=p.getpName()%> </td>
			<td><%=p.getpPrice()%> </td>
			<td><%=p.getCategory()%> </td>
		</tr>	
	<%} %>
		
    </tr>
   </tbody>
</table>	
</div>
</body>
</html>