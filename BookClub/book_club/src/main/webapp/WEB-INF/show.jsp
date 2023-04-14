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
                        <title>Display Book</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
                        <link rel="stylesheet" href="/css/main.css" />
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">
                            <h1>Display Book</h1>
                            <h1>Welcome ${user.userName}</h1>
                            <p>your email is ${user.email}</p>
                            <a href="/logout">logout</a>

                            <h1>
                                <c:out value="${book.title}" />
                            </h1>

                            <h3>Books from everyone shelves:</h3>
                            <a href="/books">back to shelves</a>

                            <div class="container">
                                <h4>Here are
                                    <c:out value="${book.user.userName}" />'s thoughts:
                                </h4>
                                <hr />

                                <p>
                                    <c:out value="${book.thoughts}" />
                                </p>
                                <hr />

                            </div>

                            <form action="/books/delete/${book.id}" method="post">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" value="Delete"> |
                                <button><a href="/books/edit/${book.id}">Edit This Book</a></button>
                            </form>
                        </div>
                    </body>

                    </html>