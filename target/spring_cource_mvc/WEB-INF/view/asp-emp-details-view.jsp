<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>


<body>

<h2>Dear Employee, Please enter your details</h2>
<br><br>
<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>

<%--    Hardcode--%>
<%--    Department<form:select path="department">--%>
<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
    Department<form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>

    <input type="submit" name="Ok">



</form:form>

</body>


</html>