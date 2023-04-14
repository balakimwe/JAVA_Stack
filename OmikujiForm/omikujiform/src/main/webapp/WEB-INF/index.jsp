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
                        <title>Form</title>
                        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
                        <link rel="stylesheet" href="/css/style.css">
                        <!-- change to match your file/naming structure -->
                        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
                        <script type="text/javascript" src="/js/app.js"></script>
                        <!-- change to match your file/naming structure -->
                    </head>

                    <body>
                        <div class="container">

                            <h1>Send an Omikuji!</h1>

                            <form action='/omikuji/show' method='POST'>

                                <div class="line">
                                    <h5>Pick any Number from 5 to 25:</h5>
                                    <input type="number" name='number'>
                                </div>

                                <div class="line">
                                    <h5>Enter the Name of any City:</h5>
                                    <input type='text' name='city'>
                                </div>

                                <div class="line">
                                    <h5>Enter the Name of any Real Person:</h5>
                                    <input type='text' name='person'>
                                </div>

                                <div class="line">
                                    <h5>Enter Professional Endeavor or Hobby:</h5>
                                    <input type='text' name='hobby'>
                                </div>

                                <div class="line">
                                    <h5>Enter any Type of Living Thing:</h5>
                                    <input type='text' name='lifething'>
                                </div>

                                <div class="line">
                                    <h5>Say Something Nice to Someone:</h5>
                                    <textarea name="comment" id="" cols="30" rows="5"></textarea>
                                </div>

                                <h5>Send and Show a Friend:</h5>

                                <input type='Submit' value='Send'>
                            </form>

                            <h4>In <span>${number}</span> years, you will live in <span>${city}</span> with
                                <span>${person}</span> as your roommate
                                <span>${hobby} ${lifething}</span> for a living <span>${comment}</span>
                            </h4>
                        </div>
                    </body>

                    </html