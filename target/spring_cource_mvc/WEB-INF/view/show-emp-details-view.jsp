<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>


<body>

<h2>Dear Employee, you are welcome!</h2>
<br>
<br>

<%--Your name:${param.employeeName}--%>
<%--Возможность добавления нескольких атрибутов--%>
<%--Your name: ${nameAttribute} ${secondAttribute}--%>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.car}
<br>
Language(s):

<ul>

    <c:forEach var="lang" items="${employee.languages}">
    <li> ${lang}</li>
    </c:forEach>

</ul>


</form>

</body>


</html>