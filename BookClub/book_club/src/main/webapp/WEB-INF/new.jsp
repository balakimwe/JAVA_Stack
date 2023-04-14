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
                        <meta charset="UTF-8" />
                        <title>New Books</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
                        <link rel="stylesheet" href="/css/main.css" />
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">

                            <h1>Add to Your Book Shelf</h1>

                            <a href="/books">back to shelves</a>

                            <form:form action="/books" modelAttribute="book" class="form" method="post">
                                <form:input type="hidden" path="user" value="${userId}"></form:input>

                                <div class="form-row">
                                    <form:errors path="title" class="error" />
                                    <form:label for="title" path="title">Title:</form:label>
                                    <form:input type="text" path="title" class="form-control" />
                                </div>

                                <div class="form-row">
                                    <form:errors path="author" class="error" />
                                    <form:label for="author" path="author">Author:</form:label>
                                    <form:input type="text" path="author" class="form-control" />
                                </div>

                                <div class="form-row">
                                    <form:errors path="thoughts" class="error" />
                                    <form:label for="thoughts" path="thoughts">Thoughts:</form:label>
                                    <form:textarea path="thoughts" class="form-control" />
                                </div>

                                <div class="form-row">
                                    <form:errors path="user" class="error" />
                                    <form:input type="hidden" path="user" value="${user.id}" class="form-control" />
                                </div>

                                <div class="form-row">
                                    <input type="submit" value="Submit" class="btn-primary" />
                                </div>

                            </form:form>

                        </div>
                    </body>

                    </html>