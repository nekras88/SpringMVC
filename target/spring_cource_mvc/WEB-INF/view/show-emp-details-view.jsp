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

</form>

</body>


</html>