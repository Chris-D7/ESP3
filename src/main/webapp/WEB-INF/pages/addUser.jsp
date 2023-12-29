<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="AddUser">
  <h1>Adding cars I guess</h1>
  <form class="card p-2 needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">
    <input type="text" class="form-control" id="username" placeholder="Username" name="username" required>
    <div class="invalid-feedback">
      REQUIRED
    </div>
    <input type="text" class="form-control" id="email" placeholder="Email" name="email" required>
    <div class="invalid-feedback">
      REQUIRED
    </div>
    <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
    <div class="invalid-feedback">
      REQUIRED
    </div>
    <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
      <c:forEach var="user_group" items="${userGroups}" varStatus="status">
        <option value="${user_group}">${user_group}</option>
      </c:forEach>
    </select>
    <button type="submit" class="btn btn-primary">Save</button>
  </form>
</t:pageTemplate>