<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<h1>Zalogowano jako: ${logged_user.name} (<a href="<c:url value='/logout'/>">wyloguj</a>)</h1>
<h3>Tu będzie dashboard...</h3>