<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
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

	String cartId = session.getId();
	
	String Shipping_cartId = "";
	String Shipping_name = "";
	String Shipping_shippingDate = "";
	String Shipping_country = "";
	String Shipping_zipCode = "";
	String Shipping_address = "";

	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (int i=0; i<cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_carId"))
				Shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				Shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				Shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				Shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				Shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_address"))
				Shipping_address = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>


<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <form class="d-flex" action="cart.jsp">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill"></span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
</body>

<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Hogwarts Market</h1>
            <p class="lead fw-normal text-white-50 mb-0">Buy and Sell anything here!</p>
        </div>
    </div>
</header>

<body>
	<section class="py-5">
    	<div class="container px-4 px-lg-5 mt-5">
        	<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
                	<h1>Receipt</h1><br>
                	<h5>Order Information</h5><br>
                	Name: <%=Shipping_name %><br>
                	Zip Code: <%=Shipping_zipCode %><br>
                	Address: <%=Shipping_address %>(<%=Shipping_country %>)<br>
                	<strong>Shipping Date</strong><br>
                	Date: <%=Shipping_shippingDate %><br>	
            	</div>
            </div>
        </div>
        
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
        	<div class="col mb-5">
        		<table class="table table-hover">
        			<tr>
        				<th class="text-center">상품</th>
        				<th class="text-center">수량</th>
        				<th class="text-center">가격</th>
        				<th class="text-center">소계</th>
        			</tr>
	<%
		int sum = 0;
		ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
		if (cartList == null)
			cartList = new ArrayList<Product>();
		
		for (int i=0; i<cartList.size(); i++) {
			Product product = cartList.get(i);
			int total = product.getPrice() * product.getQuantity();
			sum = sum + total;
	%>
            		<tr>
            			<td class="text-center"><%=product.getName() %></td>
            			<td class="text-center"><%=product.getQuantity() %></td>
            			<td class="text-center"><%=product.getPrice() %></td>
            			<td class="text-center"><%=total %>원</td>
            		</tr>
    <%
    	}
    %>
            		<tr>
            			<td></td>
            			<td></td>
            			<td class="text-right"><strong>총액: </strong></td>
            			<td class="text-center"><strong><%=sum %>원</strong></td>
            		</tr>
        		</table>
        	</div>
        </div>
        
        <div class="container px-4 px-lg-5 mt-5">
        	<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
                	<a class="btn btn-outline-success mt-auto" href="./completeOrder.jsp">Complete</a>
                    &nbsp;&nbsp;
                    <a class="btn btn-outline-warning mt-auto" href="./cancelOrder.jsp">Cancel</a>
            	</div>
            </div>
        </div>
	</section>
	

</body>
</html>

