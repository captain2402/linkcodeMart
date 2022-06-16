<%@ page import = "Model.Product" %>
<%@ page import = "Controller.ProductDao" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<h1>Confirm Order!!!</h1>
<%
	List<Product> prd=new ProductDao().ReturnBill();	
	//prd=sd.ReturnBill();
%>
<table class="table-dark bg-dark table-striped table-bordered border-light" >
	<thead>
			<th scope="col">Product Id</th>
			<th scope="col">Product Name</th>
			<th scope="col">Product Price</th>			
			<th scope="col">Product Category</th>
	</thead>
<%for(Product p:prd){ %>
	<tr>
			<td scope="row"><%=p.getpId()%></td>
			<td><%=p.getpName()%> </td>
			<td><%=p.getpPrice()%> </td>
			<td><%=p.getCategory()%> </td>
		</tr>	
	<%} %>
	</table>	
</body>
</html>