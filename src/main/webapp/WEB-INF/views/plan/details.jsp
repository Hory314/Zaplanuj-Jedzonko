<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<jsp:include page="../dashboard/header.jsp"/>
<jsp:include page="../dashboard/nav.jsp"/>
<div class="m-4 p-3 width-medium ">
    <div class="dashboard-content border-dashed p-3 m-4">
        <div class="row border-bottom border-3 p-1 m-1">
            <div class="col noPadding">
                <h3 class="color-header text-uppercase">SZCZEGÓŁY PLANU</h3>
            </div>
            <div class="col d-flex justify-content-end mb-2 noPadding">
                <a href="<c:url value='/plans'/>" class="btn btn-success rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
            </div>
        </div>

        <div class="schedules-content">
            <div class="schedules-content-header">
                <div class="form-group row">
                                <span class="col-sm-2 label-size col-form-label">
                                    Nazwa planu
                                </span>
                    <div class="col-sm-10">
                        <p class="schedules-text">${plan_description.name}</p>
                    </div>
                </div>
                <div class="form-group row">
                                <span class="col-sm-2 label-size col-form-label">
                                    Opis planu
                                </span>
                    <div class="col-sm-10">
                        <p class="schedules-text">
                            ${plan_description.description}
                        </p>
                    </div>
                </div>
            </div>
            <c:forEach var="entry" items="${plan}">
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2">${entry.key}</th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="dto" items="${entry.value}">
                        <tr class="d-flex">
                            <td class="col-2">${dto.mealName}</td>
                            <td class="col-7">${dto.recipeName}</td>
                            <td class="col-1 center">
                                <a href="<c:url value='#'/>" class="btn btn-danger rounded-0 text-light m-1">Usuń</a>
                            </td>
                            <td class="col-2 center">
                                <a href="<c:url value='/recipes/${dto.recipeId}'/>"
                                   class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:forEach>
        </div>
    </div>
</div>
<jsp:include page="../dashboard/footer.jsp"/>