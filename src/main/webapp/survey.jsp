<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main_ex56.css" type="text/css"/>
</head>

<body>
<h1>Thanks for taking our survey!</h1>

<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<label>Heard From:</label>
<span>${user.heardFrom}</span><br>

<label>Updates:</label>
<span>${user.updates}</span><br>

<c:if test="${user.updates == 'Yes'}">
    <label>Contact Via:</label>
    <span>${user.contactVia}</span>
</c:if>



<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>

</body>
</html>
