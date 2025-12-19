<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="AddUser">
    <h1>Add user details</h1>

    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddUser">
        <div class="row g-3">
            <div class="col-sm-6">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="" value=""
                       required>
                <div class="invalid-feedback">
                    Valid Username is required.
                </div>
            </div>
            <div class="col-sm-6">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="" value=""
                       required>
                <div class="invalid-feedback">
                    Valid Email is required.
                </div>
            </div>
            <div class="col-sm-6">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="" value=""
                       required>
                <div class="invalid-feedback">
                    Valid Password is required.
                </div>
            </div>
            <div class="col-sm-6">
                <label for="user_groups" class="form-label">Groups</label>
                <select class="form-select" id="user_groups" name="user_groups" multiple>
                    <c:forEach var="user_group" items="${userGroups}" varStatus="status">
                        <option value="${user_group}">${user_group}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <hr class="my-4">
        <button type="submit" class="btn btn-primary btn-lg">Add User</button>
    </form>
</t:pageTemplate>