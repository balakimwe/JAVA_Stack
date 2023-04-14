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
                        <title>Cars</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
                        <link rel="stylesheet" href="/css/main.css" />
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">
                        
                            <a href="/logout">logout</a> |
                            <a href="/cars/new">Add A New Car</a>

                            <h1>Welcome ${user.userName}</h1>
                        
                            <table class="table">
                                <thead>
                                    <th>ID</th>
                                    <th>Make</th>
                                    <th>Design</th>
                                    <th>Color</th>
                                    <th>Year</th>
                                    <th>Actions</th>

                                </thead>
                                <tbody>
                                    <c:forEach var="car" items="${cars}">
                                        <tr>
                                            <td>${car.id}</td>
                                            <td><a href="/cars/${car.id}">${car.make}</a></td>
                                            <td>${car.make}</td>
                                            <td>${car.design}</td>
                                            <td>${car.year}</td>
                                            <td>
                                                <a href="/cars/${car.id}">view</a>
                                                <c:if test="${car.user.id == userId}">
                                                    <a href="/cars/edit/${car.id}">edit</a>
                                                    <form action="/cars/delete/${car.id}" method="post">
                                                        <input type="hidden" name="_method" value="delete">
                                                        <input type="submit" value="Delete">
                                                    </form>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <a href="/cars/new">add car</a> |
                            <a href="/logout">logout</a>
                        </div>
                    </body>

                    </html>