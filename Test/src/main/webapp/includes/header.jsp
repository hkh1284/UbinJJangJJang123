<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>윌고</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
    />
</head>
<body>
<div id="main-container" class="d-flex flex-column p-4">
    <header class="d-flex justify-content-between align-items-end">
        <div id="logo-text-container" class="text-center">
            <div class="fs-1 fw-bold text-primary">
                <a href="/" class="text-decoration-none"> WILLGO </a>
            </div>
            <div class="fs-6 text-secondary">
                <u>Your simplest trip planner</u>
            </div>
        </div>
        <nav class="nav">
            <c:choose>
                <c:when test="${sessionScope.loginUser eq null}">
                    <a class="nav-link" href="<c:url value='/user/login.jsp' />">LOGIN</a>
                    <a class="nav-link" href="<c:url value='/user/signup.jsp' />">SIGNUP</a>
                    <a class="nav-link" href="<c:url value='/user?action=logout'/>">LOGOUT</a>
                </c:when>
                <c:otherwise>
                    <a class="nav-link" href="<c:url value='/user/mypage.jsp'/>">MY-PAGE</a>
                </c:otherwise>
            </c:choose>
        </nav>
    </header>
    <hr/>
    <main class=" min-vh-100">
