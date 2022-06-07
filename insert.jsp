<%@ page import="Controller.ProductServlet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Add A Product!!</title>
</head>
<body>
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
          <a class="nav-link " href="update.jsp" tabindex="-1">Update</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="delete.jsp" tabindex="-1">Delete</a>
        </li>
      </ul>
      <form action="inventoryServlet" class="d-flex">
        <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div class="container" style="display : flex ; margin-top : 50px ; justify-content: center ;">
<div class="card" style="width: 25rem;">
  <div class="card-body">
  	<h5 class="card-title mb-3">Insert!!!</h5>
<form action="ProductServlet">	
<table class="table-dark bg-dark table-striped table-bordered border-light" >
		<tr>
			<th scope="row">Product Id</td>
			<td><input type="text" name="pId" ></td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td><input type="text" name="pName" ></td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td><input type="text" name="pPrice" ></td>
		</tr>
		<tr>
			<td>Product Category</td>
			<td><input type="text" name="pCat" ></td>
		</tr>
	</table>
  <div class="row my-2 ms-2" style="width : 8rem;">
      <button href="insert.jsp" class="btn btn-sm btn-dark" type="submit">Add product</button>
  </div>
  </form>	
  </div>
</div>
</div>
</body>
</html>