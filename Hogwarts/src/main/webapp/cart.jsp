<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Item Cart</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_product.css" rel="stylesheet" />
    <!-- Web font -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">

	<%
		String cartId = session.getId();
	%>
</head>
<body>
<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="d-flex">
                    <a class="btn btn-outline-success mt-auto" href="./final.jsp">Main Page</a>
                    <div>&nbsp;&nbsp;</div>
                    <a class="btn btn-outline-dark mt-auto" href="./market.jsp">Market</a>
                </form>
            </div>
        </div>
    </nav>

<!-- Product section-->
    <section class="bg-dark py-5" style="height: 600px;">
        <div class="container px-4 px-lg-5 my-5">
        <h1>Item Cart</h1>
            <div style="padding-top: 50px">
            	<table class="table table-hover">
            		<tr>
            			<th>Item</th>
            			<th>Price</th>
            			<th>Quantity</th>
            			<th>Total</th>
            			<th>Etc</th>
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
            			<th><%=product.getProductId() %> - <%=product.getName() %></th>
            			<th><%=product.getPrice() %></th>
            			<th><%=product.getQuantity() %></th>
            			<th><%=total %></th>
            			<th><a href="./removeCart.jsp?id=<%=product.getProductId() %>">Remove</a></th>
            		</tr>
    <%
    	}
    %>
            		<tr>
            			<th></th>
            			<th></th>
            			<th>Total Price</th>
            			<th><%=sum %></th>
            			<th></th>
            		</tr>
            	</table>
            </div>
        </div>
        <form class="d-flex" style="padding: 30px; float: right; margin-right: 200px;">
        <a class="btn btn-outline-dark mt-auto" href="./deleteCart.jsp?cartId=<%=cartId %>">Delete All</a>
            <div>&nbsp;&nbsp;</div>
        <a class="btn btn-outline-primary mt-auto" href="./shippingInfo.jsp?cartId=<%=cartId %>">Order</a>
        </form>
    </section>
    
    <!-- Footer-->
    <footer class="py-5 bg-black">
        <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Web Project 2022-2 Junghyun</p></div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>    
</body>
</html>
