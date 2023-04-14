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
                        <title>Books</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
                        <link rel="stylesheet" href="/css/main.css" />
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">

                            <h1>Welcome ${user.userName}</h1>

                            <a href="/logout">logout</a>
                            <a href="/books/new">+ Add to my shelf</a>


                            <table class="table">
                                <thead>
                                    <th>ID</th>
                                    <th>Title</th>
                                    <th>Author Name</th>
                                    <th>Posted By</th>
                                    <th>Actions</th>
                                </thead>
                                <tbody>
                                    <c:forEach var="book" items="${books}">
                                        <tr>
                                            <td>${book.id}</td>
                                            <td><a href="/books/${book.id}">${book.title}</a></td>
                                            <td>${book.author}</td>
                                            <td>${book.user.userName}</td>
                                            <td>
                                                <a href="/books/${book.id}">view</a>
                                                <c:if test="${book.user.id == userId}">
                                                    <a href="/books/edit/${book.id}">edit</a>
                                                    <form action="/books/delete/${book.id}" method="post">
                                                        <input type="hidden" name="_method" value="delete">
                                                        <input type="submit" value="Delete">
                                                    </form>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <a href="/books/new">add book</a>
                            <a href="/logout">logout</a>
                        </div>
                    </body>

                    </html>