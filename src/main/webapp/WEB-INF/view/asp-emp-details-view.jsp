<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>


<body>

<h2>Dear Employee, Please enter your details</h2>
<br><br>
<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="surname"/>
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

    <br><br>
Which car do you want?
    <br><br>
    BMW <form:radiobutton path="car" value="BMW"/>
    <br><br>
    AUDI <form:radiobutton path="car" value="Audi"/>
    <br><br>
    LOTUS <form:radiobutton path="car" value="Lotus"/>

    <br><br>
    <br><br>
    Foreign Language(s)

    <form:checkboxes path="languages" items="${employee.languageList}"/>

<%--    EN<form:checkbox path="languages" value="English"/>--%>
<%--    DE<form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR<form:checkbox path="languages" value="Franch"/>--%>



    <input type="submit" name="Ok">



</form:form>

</body>


</html>