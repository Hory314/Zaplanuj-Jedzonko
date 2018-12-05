<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<c:if test="${logged_user == null}"> <%-- if user not logged --%>
    <jsp:include page="main_index.jsp"/> <%-- display prompt site --%>
</c:if>
<c:if test="${logged_user != null}"> <%-- if user logged --%>
    <jsp:include page="dashboard_index.jsp"/> <%-- display user's dashboard --%>
</c:if>