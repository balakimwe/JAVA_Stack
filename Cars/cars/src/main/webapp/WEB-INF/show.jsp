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
                            <a href="/cars">Home</a> |
                            <a href="/logout">logout</a>

                            <h1>Display Car</h1>
                            <h1>Welcome ${user.userName}</h1>
                            <p>Email: ${user.email}</p>

                            <h1>Make:
                                <c:out value="${car.make}" />
                            </h1>
                            <h1>Model:
                                <c:out value="${car.design}" />
                            </h1> 
                            <h1>Color:
                                <c:out value="${car.color}" />
                            </h1>
                            <h1>Year:
                                <c:out value="${car.year}" />
                            </h1>

                            <form action="/cars/delete/${car.id}" method="post">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" value="Delete"> |
                                <button><a href="/cars/edit/${car.id}">Edit This Car</a></button>
                            </form>
                        </div>
                    </body>

                    </html>