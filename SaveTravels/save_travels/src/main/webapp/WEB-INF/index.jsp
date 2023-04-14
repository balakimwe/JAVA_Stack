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
                        <title>Books</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">

                            <h1>All Travel</h1>

                            <table class="table">
                                <thead>
                                    <th>expense</th>
                                    <th>vendor</th>
                                    <th>amount</th>
                                    <th>Actions</th>
                                </thead>
                                <tbody>
                                    <c:forEach var="travel" items="${travels}">
                                        <tr>
                                            <td>${travel.expense}</td>
                                            <td>${travel.vendor}</td>
                                            <td>${travel.amount}</td>
                                            <td>
                                                <a href="/expense/edit/${travel.id}">Edit</a>
                                            </td>
                                            <td>
                                                <input type="hidden" name="_method" value="delete">
                                                <input type="submit" value="Delete">
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <h2>Add a Travel</h2>

                            <form:form action="/expense" method="post" modelAttribute="travel">

                                <p>
                                    <form:label path="expense">Expense:</form:label>
                                    <form:errors path="expense" />
                                    <form:input path="expense"></form:input>
                                </p>

                                <p>
                                    <form:label path="vendor">Vendor:</form:label>
                                    <form:errors path="vendor" />
                                    <form:input path="vendor"></form:input>
                                </p>

                                <p>
                                    <form:label path="amount">Amount:</form:label>
                                    <form:errors path="amount" />
                                    <form:input path="amount"></form:input>
                                </p>

                                <p>
                                    <form:label path="description">Description:</form:label>
                                    <form:errors path="description" />
                                    <form:input path="description"></form:input>
                                </p>

                                <input type="submit" value="add an expense">
                            </form:form>
                        </div>

                    </body>

                    </html>