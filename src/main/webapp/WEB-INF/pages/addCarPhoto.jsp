<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="AddCarPhoto">
    <h1>Add car photo</h1>

    <form class="needs-validation" novalidate method="post" action="${pageContext.request.contextPath}/AddCarPhoto" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-6">
                License plate: ${car.licensePlate}
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <label for="file"> Photo</label>
                <input type="file" name="file" id="file" required>
                <div class="invalid-feedback">
                    Photo is required.
                </div>
            </div>
        </div>
        <input type="hidden" name="car_id" value="${car.id}"/>
        <hr class="my-4">
        <button type="submit" class="btn btn-primary btn-lg">Add Photo</button>
    </form>
</t:pageTemplate>