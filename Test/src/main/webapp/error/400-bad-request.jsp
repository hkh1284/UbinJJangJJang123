<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:import url="/includes/header.jsp"></c:import>
<h1>Bad request</h1>
<p>
    <%= exception.getMessage() %>
</p>
<c:import url="/includes/footer.jsp"></c:import>
