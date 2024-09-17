<%@ page import="Controller.Validation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Admin-Login</title>
</head>
<body>
<div class="container" style="display : flex ; margin-top : 50px ; justify-content: center ;">
<div class="card" style="width: 25rem;">
  <div class="card-body">
  	<h5 class="card-title mb-3">Admin-Login</h5>
	<form action="Validation" class="row g-3 needs-validation" novalidate>
	<div class="row">
	  <div class="col-md-12">
	    <label for="validationCustom01" class="form-label mt-3">User name</label>
	    <input type="text" class="form-control" id="validationCustom01" placeholder="username" name="username" required>
	    <div class="valid-feedback">
	      Looks good!
	    </div>
	  </div>   
  </div>
  <div class="row">
    <div class="col-md-12 my-3">
	    <label for="validationCustom02" class="form-label">Password</label>
	    <input type="text" class="form-control" id="validationCustom02" placeholder="password" name="password" required>
	    <div class="valid-feedback">
	      Looks good!
	    </div>
	  </div>
  </div>
  <div class="row my-2 ms-2" style="width : 8rem;">
      <button class="btn btn-sm btn-primary" type="submit">Submit</button>
  </div>	
	</form>
  </div>
</div>
</div>
<script type="text/javascript">
	/*  alert("Invalid Username or Password")*/
	
</script>

</body>
</html>