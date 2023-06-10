<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>  
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_market.css" rel="stylesheet" />
	<!-- Web font -->
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">
    
<title>Edit Items</title>

<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제하시겠습니까?") == true)
			location.href = "./processDeleteProduct.jsp?id=" + id;
		else
			return;
	}	
</script>

</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <form class="d-flex" action="cart.jsp">
                        <a class="btn btn-outline-dark mt-auto" href="./market.jsp">Market</a>
                        <div>&nbsp;&nbsp;</div>
                        <a class="btn btn-outline-dark mt-auto" href="./addProduct.jsp">Sell item</a>
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
	
	<%@ include file="dbconn.jsp" %>
	<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from product";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	%>
	
	        	<div class="col mb-5">
                	<div class="card h-100">
                	<!-- Product image-->
                	<img class="card-img-top" src="./resources/upload/<%=rs.getString("p_filename") %>" style="width: 100%" alt="..." />
                	<!-- Product details-->
                	<div class="card-body p-4">
                    	<div class="text-center">
                        	<!-- Product name-->
                        	<h5 class="fw-bolder"><%=rs.getString("p_name") %></h5>
                        	<!-- Product price-->
                        	<span><%=rs.getInt("p_price") %></span>
                    	</div>
                	</div>
                	<!-- Product actions-->
                	<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                    	<div class="text-center">
                    		<a class="btn btn-outline-warning mt-auto" href="./updateProduct.jsp?id=<%=rs.getString("p_id") %>">Edit</a>&nbsp;&nbsp;
                    		<a class="btn btn-outline-danger mt-auto" href="#" onclick="deleteConfirm('<%=rs.getString("p_id") %>')">Delete</a>&nbsp;&nbsp;
                    	</div>
	                </div>
                	</div>
            	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>	
        	</div>
    	</div>
	</section>
	

</body>
</html>