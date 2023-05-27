<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all-component/all_css.jsp" %>
</head>
<body style="background-color : #f0f1f2;">

<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all-component/navbar.jsp" %>

<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class = "card">
<div class = "card-body">
<div class = "text-center text-success">
<i class = "fas fa-user-friends fa-3x"></i>


 <c:if test="${not empty succMsg }">
<h4 class="text-center text-success">${succMsg}</h4>
<c:remove var = "succMsg"/>
</c:if>

<h5>Add Jobs</h5>
</div>
<form action="add_job" method="post">

<div class="form-group">
<label>Enter Title</label>
<input type="text" name="title" required class="form-control">
</div>

<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label>
<select name="location" class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose...</option>
<option value="chennai">Chennai</option>
<option value="mumbai">Mumbai</option>
<option value="gurugram">Gurugram</option>
<option value="noida">Noida</option>
<option value="delhi">Delhi Ncr</option>
<option value="pune">Pune</option>
<option value="bangalore">Bangalore</option>
<option value="indore">Indore</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Category</label>
<select name="category" class="custom-select" id="inlineFormCustomSelectPref">
<option selected>Choose...</option>
<option value="it">IT</option>
<option value="developer">Developer</option>
<option value="banking">Banking</option>
<option value="engineer">Engineer</option>
<option value="teacher">Teacher</option>
</select>
</div>

<div class="form-group col-md-4">
<label>Status</label>
<select class="form-control" name="status">
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>
</select>
</div>
</div>

<div class="form-group">
<label>Enter Description</label>
<textarea rows="6" cols="" name="desc" class="form-control"></textarea>
</div>
<button class="btn btn-success">Publish Job</button>
</form>
</div>
</div>
</div>
</div>
</body>
</html>