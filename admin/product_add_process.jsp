<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitslnStock = request.getParameter("unitslnStock");
	String condition = request.getParameter("condition");

	Integer price;

	if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);
    
	long stock;

	if (unitslnStock.isEmpty())
        stock=0;
    else
        stock = Long.valueOf(unitslnStock);
        ProductRepository dao = ProductRepository.getInstance();

    Product newProduct = new Product();
    newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitslnStock(stock);
	newProduct.setCondition(condition);

	dao.addProduct(newProduct);
	
	response.sendRedirect("index_ad.jsp");
%>

    