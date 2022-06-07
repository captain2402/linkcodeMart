<%@ page import="Model.Product" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Admin-Console</title>
</head>
<body>
<style>
.btn-color{
color: #c2c7d0;
border-color: #2e363e;
}
.text-decor{
color: #c2c7d0;
border-color: #2e363e;
background-color: #2e363e;
}
.txt-link{
text-decoration: none;
color: #c2c7d0;
}

</style>
<div class="container" style= "margin-left : 0px; padding-left : 0px;">
<div class="cmenu" style="width : ;height:100%;background: #2e363e; position :fixed; color : white;">
	<nav class="nav-tabs flex-column navbar-dark justify-content-center" style ="color : white;">
		  <div class="nav-item btn-group dropend">  
		    <button class="btn col-12 btn-color btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown"  id="navbarDarkDropdownMenuLink" aria-expanded="false" type="button">Product</button>
		   </a>	  
			  <ul class="dropdown-menu text-decor" aria-labelledby="navbarDarkDropdownMenuLink">
			  <a class="nav-link text-decor" aria-current="page" href="insert.jsp">Add new product</a><br/>
			  <a class="nav-link text-decor" aria-current="page" href="update.jsp">Change price</a><br/>
			  <a class="nav-link text-decor" aria-current="page" href="delete.jsp">Remove product</a><br/>    
			  </ul>
		  </div>
		  <div class="d-grid gap-2 mx-1 text-nowrap">
		  	<button class="btn btn-color btn-outline-secondary" type="button"><a href="Inventory.jsp" class="txt-link" style="text-decoration:none;">Inventory</a></button>
		  </div><br/>
		  <div class="d-grid gap-2 mx-1 text-nowrap">
		  	<button class="btn btn-color btn-outline-secondary" type="button"><a href="PurchaseHistory.jsp" class="txt-link">Purchase history</a></button>
		  </div><br/>
		    <div class="d-grid gap-2 mx-1 text-nowrap">
		  	<button class="btn btn-color btn-outline-secondary" type="button"><a href="bestSeller.jsp" class="txt-link">Best Sellers</a></button>
		  </div><br/>
		  <div class="d-grid gap-2 mx-1 text-nowrap">
		  <button class="btn btn-color btn-outline-secondary" type="button"><a href="AdminLogin.jsp" class="txt-link">Logout</a></button>
		  </div><br/>
		</nav>
</div>
</div>
<script type="text/javascript">
	//alert("Login Successful!!!");
 
</script>

</body>
</html>