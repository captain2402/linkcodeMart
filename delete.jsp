<%@ page import="Controller.Validation"%>
<%@ page import="Controller.deleteServlet"%>
<%@ page import="Controller.ProductDao"%>

<%@ page import="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Delete A product</title>
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
          <a class="nav-link" href="update.jsp" tabindex="-1">Update</a>
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
  	<h5 class="card-title mb-3">Delete!!!</h5>
	<form action="deleteServlet" class="row g-3 needs-validation" novalidate>
	<div class="row">
	  <div class="col-md-12">
	    <label for="validationCustom01" class="form-label mt-3">Enter Product Id</label>
	    <input type="text" class="form-control" id="validationCustom01" placeholder="Product Id" name="pId" required>
	    <div class="valid-feedback">
	      Looks good!
	    </div>
	  </div>   
  </div>
  <div class="row my-2 ms-2" style="width : 8rem;">
      <button href="delete.jsp" class="btn btn-sm btn-dark"data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" type="submit">Submit</button>
  </div>	
	</form>
  </div>
</div>
</div>
<script type="text/javascript">
function delpopup(){
}
</script>

</body>
</html>