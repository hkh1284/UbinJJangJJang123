<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<style type="text/css"></style>
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
            <a class="nav-link active" href="#">Login</a>
            <a class="nav-link" href="#">Sign-Up</a>
        </nav>
        <nav class="nav d-none">
            <a class="nav-link active" href="#">Mypage</a>
            <a class="nav-link" href="#">Logout</a>
        </nav>
    </header>
    <hr/>
    <main class="min-vh-100">
