<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="/resources/images/logo.png">
    <title>ENDPOINT</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
    <link href='http://fonts.googleapis.com/css?family=Jura&subset=latin,greek' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Comfortaa&subset=latin,greek' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css"
          href="//cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Load CSS -->
    <link href="/resources/css/navbar.css" rel="stylesheet"/>

    <!-- jQueryUI Calendar-->
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet"
          type="text/css"/>

    <style>
        #footer {
            position: relative;
            bottom: 0;
            width: 100%;
            height: 60px; /* Height of the footer */
        }

        thead, tbody {
            display: block;
        }

        tbody {
            height: 200px;       /* Just for the demo          */
            overflow-y: auto;    /* Trigger vertical scroll    */
            overflow-x: hidden;  /* Hide the horizontal scroll */
        }

        table {
            height:200px;
        }

        td,tr {
            width: 100%;
        }
    </style>

</head>

<body>

<!-- Include Navbar -->
<%@ include file="/resources/html/navbar.html" %>

<!-- Endpoint Page -->
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <span style="text-align: center; font-family: 'Comfortaa', cursive;"><h3><spring:message
                    code="endpoint.ex"/></h3></span>
            <div align="center" style="padding:10px;">
                <a href="/endpoint/query/1" class="btn btn-default"
                   style="margin-bottom:4px;white-space: normal; width:100%; text-align: left;"><spring:message
                        code="endpoint.q1"/></a>
            </div>
            <div align="center" style="padding:10px;">
                <a href="/endpoint/query/2" class="btn btn-default"
                   style="margin-bottom:4px;white-space: normal; width:100%; text-align: left;"><spring:message
                        code="endpoint.q2"/></a>
            </div>
            <div align="center" style="padding:10px;">
                <a href="/endpoint/query/3" class="btn btn-default"
                   style="margin-bottom:4px;white-space: normal; width:100%; text-align: justify;"><spring:message
                        code="endpoint.q3"/></a>
            </div>
        </div>
        <div class="col-md-9">
            <span style="text-align: center; font-family: 'Comfortaa', cursive;"><h3>ENDPOINT</h3></span>
            <form role="form" action="/endpoint">
                <div class="form-group">
                    <textarea name="query" class="form-control" rows="15" columns="15" style="text-align: justify">
                        <c:choose>
                            <c:when test="${empty endpointResults}">
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX metalex:<http://www.metalex.eu/metalex/2008-05-02#>
PREFIX nomothesia: <http://legislation.di.uoa.gr/ontology/>
PREFIX eli: <http://data.europa.eu/eli/ontology#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX dc: <http://purl.org/dc/terms/>
                            </c:when>
                            <c:otherwise>
${endpointResults.getQuery()}
                            </c:otherwise>
                        </c:choose>
                    </textarea>
                </div>
                <div class="form-group" style="text-align: right;">
                    <div class="row">
                        <div class="col-md-3" style="text-align:left;">
                            <label><spring:message code="endpoint.form"/></label>
                            <select class="form-control" name="format">
                                <option value="HTML"
                                        <c:if test="${format != null && fn:contains(format, 'HTML')}">selected</c:if>>
                                    HTML
                                </option>
                                <option value="XML"
                                        <c:if test="${format != null && fn:contains(format, 'XML')}">selected</c:if>>
                                    SPARQL/XML
                                </option>
                            </select>
                        </div>
                        <div class="col-md-4"></div>
                        <div class="col-md-5" style="bottom:0">
                            <button type="submit" class="btn btn-default btn-lg"><spring:message
                                    code="endpoint.run"/></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <br/>
        <c:if test="${not empty endpointResults.getMessage()}">
            <div class="alert alert-warning" role="alert">${endpointResults.getMessage()}</div>
        </c:if>
        <c:if test="${not empty endpointResults.getResults()}">
            <div class="table-responsive">
                <table id="example" class="table table-striped table-borderedtable table-striped table-bordered"
                       style="text-align: left; font-size: 12px;" cellspacing="0" width="80%">
                        ${endpointResults.getResults()}
                </table>
            </div>
        </c:if>
        <br/>
        <br/>
        <br/>
    </div>

</div>

<!-- Include Footer -->
<%@ include file="/resources/html/footer.html"%>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
</body>
</html>