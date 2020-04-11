<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>index</title>
</head>
<body>
    <h2>index</h2>
    
    <c:if test="${empty subject.principal}">
        <a href="login">登录</a><br>
    </c:if>
    <c:if test="${!empty subject.principal}">
        <span>你好，${subject.principal}，</span>
        <a href="logout">退出</a><br>   
    </c:if>
    
    <table>
        <tbody>
            <tr><td><a href="addProduct">addProduct</a></td></tr>
            <tr><td><a href="deleteProduct">deleteProduct</a></td></tr>
            <tr><td><a href="addOrder">addOrder</a></td></tr>
            <tr><td><a href="deleteOrder">deleteOrder</a></td></tr>
        </tbody>
    </table>
</body>
</html>