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
                            
                            <a href="/cars">Home</a>
                            <h1>Add to Your Car</h1>
                        
                            <form:form action="/cars" modelAttribute="car" class="form" method="post">
                                <form:input type="hidden" path="user" value="${userId}"></form:input>
                        
                                <div class="form-row">
                                    <form:errors path="make" class="error" />
                                    <form:label for="make" path="make">Make:</form:label>
                                    <form:input type="text" path="make" class="form-control" />
                                </div>
                        
                                <div class="form-row">
                                    <form:errors path="design" class="error" />
                                    <form:label for="design" path="design">Model:</form:label>
                                    <form:input type="text" path="design" class="form-control" />
                                </div>
                        
                                <div class="form-row">
                                    <form:errors path="color" class="error" />
                                    <form:label for="color" path="color">Color:</form:label>
                                    <form:textarea path="color" class="form-control" />
                                </div>
                                <div class="form-row">
                                    <form:errors path="year" class="error" />
                                    <form:label for="year" path="year">Year:</form:label>
                                    <form:textarea path="year" class="form-control" />
                                </div>
                        
                                <div class="form-row">
                                    <form:errors path="user" class="error" />
                                    <form:input type="hidden" path="user" value="${user.id}" class="form-control" />
                                </div> <br>
                        
                                <div class="form-row">
                                    <input type="submit" value="Submit" class="btn-primary" />
                                </div>
                        
                            </form:form>
                        
                        </div>
                    </body>

                    </html>