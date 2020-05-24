<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>

<form action="<c:url value="update"/>" method="post">
    <p><input type="hidden" name="id" value="${id}"></p>
    <p><input placeholder="${userUpdate.id}"/></p>
    <p><input type="text" name="role" value="${userUpdate.role}"/></p>
    <p><input type="text" name="name" value="${userUpdate.name}"/></p>
    <p><input type="text" name="login" value="${userUpdate.login}"/></p>
    <p><input type="text" name="password" value="${userUpdate.password}"/></p>
    <div>
        <button>Update</button>
    </div>

</form>
<%--<a href="/admin">Submit another message</a>--%>
</body>
</html>
