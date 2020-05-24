
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Result</h1>

<jsp:useBean id="userForm" scope="request" type="org.hibernate.engine.profile.Association"/>
<c:out value="${userForm.role}"/>
<c:out value="${userForm.name}"/>
<c:out value="${userForm.login}"/>
<c:out value="${userForm.password}"/>
<a href="<c:url value="/admin"/>">Submit another message</a>
</body>
</html>
