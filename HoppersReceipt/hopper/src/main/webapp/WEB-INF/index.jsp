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
                        <title>Grace</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <h1>Grace Hopper</h1>
                        <div class="container">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/9eyFDBPk4Yw"
                                    allowfullscreen></iframe>
                            </div>
                            <!-- <div class="car">
                                <h1>
                                    <c:out value="${name}"></c:out>
                                </h1>
                                <p>Itemname: ${itemName}</p>
                                <p>Price: $${price}</p>
                                <p>Description: ${description}</p>
                                <p>Vendor: ${vendor}</p>
                            </div> -->

                            <h1>Customer Name: ${name}</h1>
                            <c:forEach var="item" items="${items}">
                                <div class="card"> 
                                    <p>Item Name: ${item.itemName}</p>
                                    <p>Price: ${item.price}</p>
                                    <p>Description: ${item.description}</p>
                                    <p>Vendor: ${item.vendor}</p>
                                </div>

                            </c:forEach>
                        </div>
                    </body>

                    </html>