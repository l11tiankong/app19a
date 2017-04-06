<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>edit book form</title>
</head>
<body>
<div>
<form:form commandName = "book" action ="/book_update" method = "post">
	<fieldset>
		<legend>edit a book</legend>
		<!--<form:hidden path="id" />-->
		<p>
			<label for="category">Category:</label>
			<form:select id="category" path ="category.id" items="${categories}" itemLabel = "name" itemValue="id" />
		</p>
		<p>
			<label for="title">title:</label>
			<form:input id = "title" path="title" />
		</p>
		<p>
			<label for="author">author:</label>
			<form:input id = "author" path="author" />
		</p>
		<p>
			<label for="isbn">isbn:</label>
			<form:input id = "isbn" path="isbn" />
		</p>
		<p >
			<input type="reset" tabindex="4">
			<input type="submit" tabindex="5" value="Update book">
		</p>
	</fieldset>
</form:form>
</div>
</body>
</html>
