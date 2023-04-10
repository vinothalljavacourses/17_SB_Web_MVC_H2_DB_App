<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product View Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
</head>
<body>
<div class="container">
  <h3 class="pb-3 pt-3">Product View Page</h3>
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th>S.No</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Quantity</th>
          </tr>
        </thead>
        <tbody>
         <c:forEach items="${products}" var="product" varStatus="index">
            <tr>
              <td>${index.count}</td>
              <td>${product.name}</td>
              <td>${product.price}</td>
              <td>${product.quantity}</td>
            </tr>
         </c:forEach>
         <tr>
          <td colspan="4" style="text-align:center"><font color="red"><c:if test="${empty products}"> No Records Found </c:if></font></td>
         </tr>
         <td><a href="/" class="btn btn-primary"/>Home Page</td>
        </tbody>
      </table>
</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>