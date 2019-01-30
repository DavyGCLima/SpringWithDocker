<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>WPattern Spring MVC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <h2>Contacts</h2>
        <table>
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Phone</th>
                <th></th>
                <th></th>
            </tr>
                <c:forEach items="${contactForm.contacts}" var="contact">
            <tr>
                <td>${contact.id}</td>
                <td>${contact.firstname}</td>
                <td>${contact.lastname}</td>
                <td>${contact.email}</td>
                <td>${contact.phone}</td>
                <td> <a href="/contact/edit.html?id=${contact.id}">Edit</a> </td>
                <td> <a href="/contact/delete.html?id=${contact.id}">Delete</a> </td>
            </tr>
        </c:forEach>
        </table>

        <br/>

        <form:form action="/contact/add.html" method="get">
            <input type="submit" value="Add" />
        </form:form>

        <form:form action="/contact/listEdit.html" method="get">
                <input type="submit" value="List Edit" />
        </form:form>
    </body>
</html>