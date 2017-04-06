<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>book list</title>
</head>
<body>
<div>
<h1>book list</h1>
<a href="<c:url value ="/book_input" />">add a book</a>
<table>
<tr>
	<th>category</th>
	<th>title</th>
	<th>isbn</th>
	<th>author</th>
	<th>&nbsp;</th>
</tr>
<c:forEach items="${books}" var="book">
<tr>
	<td>${book.category.name}</td>
	<td>${book.title}</td>
	<td>${book.isbn}</td>
	<td>${book.author}</td>
	<td><a href="book_edit/${book.id}">edit</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
