<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- c:out ; c:forEach etc. -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- Formatting (dates) -->
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!-- form:form -->
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!-- for rendering errors on PUT routes -->
                <%@ page isErrorPage="true" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Edit Expense</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">
                            <h2>Edit Expense</h2>

                            <form:form action="/expense/edit" method="post" modelAttribute="travel">
                                <input type="hidden" name="_method" value="put">

                                <form:label path="expense">Expense</form:label>
                                <form:errors path="expense" />
                                <form:input path="expense"></form:input>

                                <form:label path="vendor">Vendor</form:label>
                                <form:errors path="vendor" />
                                <form:input path="vendor"></form:input>

                                <form:label path="amount">Amount</form:label>
                                <form:errors path="amount" />
                                <form:input path="amount"></form:input>

                                <form:label path="description">Description</form:label>
                                <form:errors path="description" />
                                <form:input path="description"></form:input>

                                <input type="submit" value="Edit expense">
                            </form:form>
                        </div>

                    </body>

                    </html>