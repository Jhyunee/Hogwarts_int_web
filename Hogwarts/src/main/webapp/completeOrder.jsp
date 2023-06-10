<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Order Information</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_market.css" rel="stylesheet" />
    
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">

</head>

<%
	request.setCharacterEncoding("UTF-8");
	
	String Shipping_cartId = "";
	String Shipping_shippingDate = "";

	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i=0; i<cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				Shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				Shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>


<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <a class="btn btn-outline-dark mt-auto" href="./final.jsp">Home</a>
                </div>
            </div>
        </nav>
</body>

<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Order Complete!</h1>
            <p class="lead fw-normal text-white-50 mb-0">Thank you for buying.</p>
        </div>
    </div>
</header>

<body>
	<section class="py-5">
    	<div class="container px-4 px-lg-5 mt-5">
        	<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
                	<h1>Thank you for ordering</h1><br>
                	<h5>Information</h5><br>
                	<p>배송예정 : <br><%=Shipping_shippingDate %>
                	<p>주문번호 : <br><%=Shipping_cartId %>
            	</div>
            </div>
        </div>
	</section>
</body>
</html>

