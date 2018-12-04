<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<jsp:include page="../header.jsp"/>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form:form method="post" modelAttribute="newLogin" class="padding-small text-center">
                    <h1 class="text-color-darker">Logowanie</h1>
                    <div class="form-group">
                        <form:input path="email" type="text" class="form-control" name="email"
                                    placeholder="podaj adres email"/>
                        <form:errors path="email"/>
                    </div>
                    <div class="form-group">
                        <form:input path="password" type="password" class="form-control"
                                    placeholder="podaj hasło"/>
                        <form:errors path="password"/>
                    </div>
                    <button class="btn btn-color rounded-0" type="submit">Zaloguj</button>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form:form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../footer.jsp"/>