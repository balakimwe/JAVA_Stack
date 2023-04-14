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
                        <title>Edit Book</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link rel="stylesheet" href="/css/style.css">
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        ${book}
                        <div class="container">


                            <h1>Edit a Book</h1>


                            <h2>New And Improved Form</h2>

                            <form:form action="/books/${book.id}" method="POST" modelAttribute="book">
                                <input type="hidden" name="_method" value="put">
                                <div class="form-control">
                                    <form:label path="title">Title:</form:label>
                                    <form:errors path="title"></form:errors>
                                    <form:input path="title"></form:input>
                                </div>
                                <div class="form-control">
                                    <form:label path="author">Author:</form:label>
                                    <form:errors path="author"></form:errors>
                                    <form:input path="author"></form:input>
                                </div>
                                <div class="form-control">
                                    <form:label path="pages">Pages:</form:label>
                                    <form:errors path="pages"></form:errors>
                                    <form:input path="pages"></form:input>
                                </div>

                                <input type="submit" value="submit">

                            </form:form>

                            <a class="btn btn-primary" href="/">Home</a>


                        </div>
                    </body>

                    </html>