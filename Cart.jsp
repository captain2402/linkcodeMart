<%@ page import = "Model.Product" %>
<%@ page import = "Model.BillObject" %>
<%@ page import = "Controller.CartDao" %>
<%@ page import = "Controller.CartServlet" %>
<%@ page import = "Controller.ProductDao" %>
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
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a class="navbar-brand" href="#" data-abc="true">DMART</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02"
        aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation"> <span
            class="navbar-toggler-icon"></span> </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"> <a class="nav-link" href="#" data-abc="true">Home <span
                        class="sr-only">(current)</span></a> </li>
            <li class="nav-item"> <a class="nav-link" href="#" data-abc="true">contact</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#" data-abc="true">Pricing</a> </li>
            <li class="nav-item"> <a class="nav-link" href="#" data-abc="true">login</a> </li>
        </ul>
        <form onsubmit="event.preventDefault()" class="form-inline my-2 my-lg-0"> <input class="form-control mr-sm-2"
                type="text" placeholder="Search"> <button class="btn btn-secondary my-2 my-sm-0"
                type="submit">Search</button> </form>
    </div>
</nav>

<%
	List<Product> prd=new ProductDao().ReturnBill();	
	//prd=sd.ReturnBill();
%>


	<div class="container-fluid my-5 mx-1">
	<div class="row">
	<div class="col-9 align-centre">
	<%for(Product p : prd){%>
		
		<form action="CartServlet">
		<div class="card mb-3 align-start" style="max-width: 90%;">
		<div class="row g-0">
    <div class="col-md-4">
      <img src="..." class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h2 class="card-title" name="name"><%=p.getpName() %></h2>
        <h3 style="color : red;"><%=p.getpPrice() %></h3>
        <p name="pid" hidden><%=p.getpId() %></p>
        <p class="card-text">Quantity : <%=p.getQuantity() %></p>
        <button class="btn btn-dark" onclick="remove()">Remove</button>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
		</form>
	<%} %>
	</div>
	<%BillObject bobj=null; %>
	<%bobj=new CartDao().cartBill() ; %>
	<div class="col-3 ">
	<div class="w-100 shadow p-3 mb-5 bg-light rounded border border-2 rounded"> 
		<h3 style="color : red;">$ <%=bobj.getTotal() %></h3>
		<ul class="list-group list-group-flush">
		  <li class="list-group-item">Total   :<%=bobj.getTotal() %></li>
		  <li class="list-group-item">CGST    :<%=bobj.getCgst() %></li>
		  <li class="list-group-item">SGST    :<%=bobj.getSgst() %></li>
		  <li class="list-group-item">FINAL   :<%=bobj.getFinaltotal() %></li>
		</ul>
    <a href="#" class="btn btn-dark">Checkout</a>
    </div>
  </div>
</div>
	</div>
<script type="text/javascript">
	function remove(){
			alert("Product removed...");
	}
	
	

</script>
</body>
</html>
<style>
    body {
        background-color: rgb(44, 189, 165);
    }

    body {

        background: #eee;
    }


    .wrapper {

        margin-top: 30px;
    }

    .card {

        border: 1px solid #eee;
        cursor: pointer;
    }


    .weight {

        margin-top: -65px;
        transition: all 0.5s;
    }

    .weight small {

        color: #e2dede;
    }

    .buttons {
        padding: 10px;
        background-color: #d6d4d44f;
        border-radius: 4px;
        position: relative;
        margin-top: 7px;
        opacity: 0;
        transition: all 0.8s;
    }

    .dot {
        height: 14px;
        width: 14px;
        background-color: green;
        border-radius: 50%;
        position: absolute;
        left: 27%;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 8px;
        color: #fff;
        opacity: 0;
    }

    .cart-button {
        height: 48px
    }

    .cart-button:focus {
        box-shadow: none
    }

    .cart {
        position: relative;
        height: 48px !important;
        width: 50px;
        margin-right: 8px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #fff;
        padding: 11px;
        border-radius: 5px;
        font-size: 14px;
        transition: 1s ease-in-out;
        overflow: hidden;

    }

    .cart-button.clicked span.dot {
        animation: item 0.3s ease-in forwards
    }

    @keyframes item {
        0% {
            opacity: 1;
            top: 30%;
            left: 30%
        }

        25% {
            opacity: 1;
            left: 26%;
            top: 0%
        }

        50% {
            opacity: 1;
            left: 23%;
            top: -22%
        }

        75% {
            opacity: 1;
            left: 19%;
            top: -18%
        }

        100% {
            opacity: 1;
            left: 14%;
            top: 28%
        }
    }



    .card:hover .buttons {

        opacity: 1;
    }


    .card:hover .weight {

        margin-top: 10px;
    }

    .card:hover {

        transform: scale(1.04);
        z-index: 2;
        overflow: hidden;
    }
</style>