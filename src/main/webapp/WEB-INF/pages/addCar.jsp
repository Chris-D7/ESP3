<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="AddCar">
  <h1>Adding cars I guess</h1>
  <form class="card p-2 needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
      <input type="text" class="form-control" placeholder="license plate" name="license_plate" required>
      <div class="invalid-feedback">
        REQUIRED
      </div>
      <input type="text" class="form-control" placeholder="parking spot" name="parking_spot" required>
      <div class="invalid-feedback">
        REQUIRED
      </div>
      <select class="form-select" name="owner_id" required>
          <option value="">Choose user...</option>
          <c:forEach var="user" items="${users}" varStatus="status">
              <option value="${user.id}">${user.userName}</option>
          </c:forEach>
      </select>
      <div class="invalid-feedback">
        REQUIRED
      </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</t:pageTemplate>