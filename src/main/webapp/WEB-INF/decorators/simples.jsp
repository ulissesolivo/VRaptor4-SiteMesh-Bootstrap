<%-- 
    Document   : edita
    Created on : 19/05/2016, 21:30:40
    Author     : Ulisses Olivo
    E-mail     : ulissesolivo@gmail.com
--%>

<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<c:set var="basedir" value="${pageContext.request.contextPath}" scope="session" />
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title><decorator:title default="VRaptor 4 com SiteMesh e Bootstrap" /></title>

    <!-- Bootstrap -->
    <link href="${basedir}/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${basedir}/lib/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />

    <!-- Style -->
    <link href="${basedir}/lib/css/style.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${basedir}/lib/assets/js/html5shiv.min.js" type="text/javascript"></script>
    <script src="${basedir}/lib/assets/js/respond.min.js" type="text/javascript"></script>
    <![endif]-->

    <script type="text/javascript">
      basedir = '${basedir}';
    </script>
    <decorator:head />
    
  </head>

  <body>

    <div class="container-fluid">
      <div class="row">
        <decorator:body />
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basedir}/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basedir}/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="${basedir}/lib/assets/js/vendor/holder.min.js" type="text/javascript"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${basedir}/lib/assets/js/ie10-viewport-bug-workaround.js" type="text/javascript"></script>
  </body>
</html>

