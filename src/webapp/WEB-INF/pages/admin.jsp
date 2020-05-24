<%--@elvariable id="userForm" type="antlr"--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <style>
        table {
            width: 50%;
        }

        table, th, td {
            border: 2px solid MediumSlateBlue;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        table#t01 tr:nth-child(even) {
            background-color: #eee;
            color: SaddleBrown;
        }

        table#t01 tr:nth-child(odd) {
            background-color: #fff;
            color: SaddleBrown;
        }

        table#t01 th {
            background-color: MediumSlateBlue;
            color: white;
        }
    </style>
</head>
<body>
<table id="t01">
    <tr>
        <th>User</th>
        <th>ID</th>
        <th>Name</th>
        <th>Login</th>
        <th>Pass</th>
        <th>Portal</th>
        <th>Portal</th>
    </tr>
    <c:set var="Car" value="car"/>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>
                <c:out value="${user.role}"/>
            </td>
            <td>
                <c:out value="${user.id}"/>
            </td>
            <td>
                <c:out value="${user.name}"/>
            </td>
            <td>
                <c:out value="${user.login}"/>
            </td>
            <td>
                <c:out value="${user.password}"/>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/update" method="get">
                    <button type="submit" onclick=input name="id" value="${user.id}" >UPDATE</button>
                </form>
            </td>
            <td>
                <form action="<c:url value="/delete"/>" method="post">
                    <button type="submit" onclick=input name="id" value="${user.id}" >DELETE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<form action="<c:url value="/admin"/>" method="post">
    <p><input type="text" name="role" placeholder="Role" value="${userForm.role}"/></p>
    <p><input type="text" name="name" placeholder="Name" value="${userForm.name}"/></p>
    <p><input type="text" name="login" placeholder="Login" value="${userForm.login}"/></p>
    <p><input type="text" name="password" placeholder="Password" value="${userForm.password}"/></p>
    <div>
        <button>Add</button>
    </div>

</form>


</body>

</html>
