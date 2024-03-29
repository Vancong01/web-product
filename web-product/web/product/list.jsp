<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form method="post" action="/products?action=find">
    <input type="text" name="text">
    <input type="submit"/>
</form>

</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Desscribe</td>
        <td>Producer</td>
        <td>Avatar</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDesscribe()}</td>
            <td>${product.getProducer()}</td>
            <td>
                <img src="<%request.getServletContext().getRealPath("");%>/uploadDir/${product.getAvatar()}" id="uploadDir">
            </td>

            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>