<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main_ex56.css" type="text/css"/>
</head>
<body>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and
    email address below.</p>

<p> <i>${message}</i> </p>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">

    <label>Email:</label>
    <input type="email" name="email" ><br>

    <label>First Name:</label>
    <input type="text" name="firstName" ><br>

    <label>Last Name:</label>
    <input type="text" name="lastName" ><br>

    <label>Heard From:</label>
    <input type="text" name="heardFrom" ><br>

    <label> Wants updates?</label>
    <p><input type="checkbox" name="updates" checked>Yes</p>
    <p>Contact Via:
        <select name="contactVia">
            <option value="Both" selected>Email or postal mail</option>
            <option value="Email">Email only</option>
            <option value="Postal Mail">Postal mail only</option>
        </select>
    </p>
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" id="submit">
</form>

</body>
<script>

</script>
</html>
<c:import url="/footer.jsp" />