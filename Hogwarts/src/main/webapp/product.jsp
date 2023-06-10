<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>

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
    <title>Item Information</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_product.css" rel="stylesheet" />
    <!-- Web font -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">

	<script type="text/javascript">
		function addToCart() {
			if (confirm("상품을 장바구니에 담으시겠습니까?")) {
				document.addForm.submit();
			}
			else {
				document.addForm.reset();
			}
		}
	</script>
</head>
<body>
<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="d-flex" action="cart.jsp">
                	<a class="btn btn-outline-dark mt-auto" href="./market.jsp">Market</a>
                	<div>&nbsp;&nbsp;</div>
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-dark text-white ms-1 rounded-pill"></span>
                    </button>
                </form>
            </div>
        </div>
    </nav>
    
	<%@ include file="dbconn.jsp" %>
	<%
		String ProductId = request.getParameter("id");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product where p_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ProductId);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
	%>

<!-- Product section-->
    <section class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="./resources/upload/<%=rs.getString("p_filename") %>" style="width: 100%" alt="..." /></div>
                <div class="col-md-6">
                    <div class="small mb-1">Id: <%=rs.getString("p_id") %></div>
                    <h1 class="display-5 fw-bolder"><%=rs.getString("p_name") %></h1>
                    <div class="fs-5 mb-5">
                        <span>₩ <%=rs.getString("p_price") %></span>
                        <div class="small mb-1"><%=rs.getString("p_condition") %></div>
                    </div>
                    <p class="lead"><%=rs.getString("p_description") %></p>
                    <div class="d-flex">
                        <input class="form-control text-center me-3" id="inputQuantity" value="<%=rs.getString("p_unitsInStock") %>" style="max-width: 3rem" />
                        
                        <form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id") %>" method="post">
                        <button class="btn btn-outline-dark flex-shrink-0" type="button" onClick="addToCart()">
                            <i class="bi-cart-fill me-1"></i>
                            Add to cart
                        </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%
		}
		
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>	
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
