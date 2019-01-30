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
        <choose>
            <when test="${contact.id == null}"><h2>Add Contact</h2></when>
            <when test="${contact.id != null}"><h2>Edit Contact</h2></when>
        </choose>

        <form method="post" action="/contact/save.html" modelAttribute="contact">
            <input name="id" value="${contact.id}" hidden="true"  />
            <label>First Name: </label> <input name="firstname" value="${contact.firstname}" /> <br/>
            <label>Last Name: </label> <input name="lastname" value="${contact.lastname}" /> <br/>
            <label>Email: </label> <input name="email" value="${contact.email}" /> <br/>
            <label>Phone: </label> <input name="phone" value="${contact.phone}" /> <br/>

            <br/>

            <input type="submit" name="action" value="Save" />
            <input type="submit" name="action" value="Cancel" />
        </form>
    </body>
</html>
