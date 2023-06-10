<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.concurrent.Flow.Publisher"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("utf-8");

	String filename ="";
	String realFolder = request.getRealPath("resources/upload");
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String ProductId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("price");
	
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
		
	Integer price;
	if(unitPrice.isEmpty())
		price = 0;
	else 
		price = Integer.parseInt(unitPrice);
	
	Integer stock;
	if(unitsInStock.isEmpty())
		stock = 0;
	else 
		stock = Integer.parseInt(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from product where p_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ProductId);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		if (fileName != null) {
			sql = "UPDATE product SET p_name=?, p_price=?, p_description=?, p_category=?, p_unitsInStock=?, p_condition=?, p_fileName=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, description);
			pstmt.setString(4, category);
			pstmt.setInt(5, stock);
			pstmt.setString(6, condition);
			pstmt.setString(7, fileName);
			pstmt.setString(8, ProductId);
			pstmt.executeUpdate();
		}
		else {
			sql = "UPDATE product SET p_name=?, p_price=?, p_description=?, p_category=?, p_unitsInStock=?, p_condition=? WHERE p_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, description);
			pstmt.setString(4, category);
			pstmt.setInt(5, stock);
			pstmt.setString(6, condition);
			pstmt.setString(7, ProductId);
			pstmt.executeUpdate();
		}		
	}
	
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (pstmt != null)
		conn.close();
	
	
//	ProductRepository dao = ProductRepository.getInstance();
	
//	Product newProduct = new Product();
//	newProduct.setProductId(ProductId);
//	newProduct.setName(name);
//	newProduct.setPrice(price);
//	
//	newProduct.setDescription(description);
//	newProduct.setCategory(category);
//	newProduct.setUnitsInStock(stock);
//	newProduct.setCondition(condition);
//	newProduct.setFilename(fileName);
	
//	dao.addProduct(newProduct);
	
	response.sendRedirect("editProduct.jsp?edit=update");
	
%>
