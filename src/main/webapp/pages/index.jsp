<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
 <div class="container">
	  <h3 class="pb-3 pt-3" >Product Home Page</h3>
	  <h3><font color="green">${msg}</font></h3>
	  <form:form action="addProduct" modelAttribute="products" method="POST">
	  
	   <table border="1">
	     <tr>
	        <td>Name : </td>
	        <td><form:input path="name"/></td>
	     </tr>
	     <tr>
	        <td>Price : </td>
	        <td><form:input path="price"/></td>
	     </tr>
	     <tr>
	        <td>Quantity : </td>
	        <td><form:input path="quantity"/></td>
	     </tr>
	      <tr>
	        <td><input type="submit" class="btn btn-primary"/></td>
	        <td><a href="/viewrecords" class="btn btn-primary"/>View Records</td>
	     </tr>
	   </table>	   
	  </form:form>
	  <hr/>
      
       <hr/>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>