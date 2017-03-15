<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="e" uri="/struts-dojo-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<e:head/>
<html>
    <body>
        <style>
            .search {
                width:100%;
                position: relative;
    z-index: 10000;
    .dojoComboBox  {
      
    width: 39px;
    height: 48px;

    }
            }
         
            </style>
<link type="text/css" href="menu.css" rel="stylesheet" />
<!--    <link type="text/css" href="search.css" rel="stylesheet" />
    <link rel="stylesheet" href="style.css">-->
    <link rel="stylesheet" href="bootstrap.min.css">
<!-- <link rel="stylesheet" href="w3.css">-->
  <link rel="stylesheet" href="icon.css">
<script src="js/jquery-1.12.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
   
    
<div class="navbar navbar-inverse navbar" role="navigation" style="margin-bottom:0px;">

    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" rel="home" href="">EKART</a>
         
    </div>
    <ul class="nav navbar-nav pull-left">
       <li><s:a action="logout">ABOUT US</s:a></li> 
    </ul>
    <div class="collapse navbar-collapse navbar-ex1-collapse">

       <!-- <ul class="nav navbar-nav">
            <li><a href="#">TODAY'S DEAL</a></li>
            <li><a href="#"></a></li>
<!--            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
        </ul>-->

        <div class="col-sm-3 col-md-3" style="width:830px;">
        <form class="navbar-form" role="search" action="search" style="width:830px;">
        <div class="input-group" style="width:830px;">
<!--            <input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">-->
             <e:autocompleter list="name" cssClass="dojoComboBox btn search" name="srch-term" id="srch-term" value=""/>
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit">
   <i class="material-icons" style="font-size:20px;">search</i></button>
            </div>
        </div>
        </form>
        </div>
         <ul class="nav navbar-nav pull-right">
<!--            <li><a href="#">WELCOME USER</a></li>-->

<c:choose>
    <c:when test="${user !=null}">
        <li style="padding-top:15px;padding-bottom:15px;color:#9d9d9d;">Hello ${session.user}!</li>
       <!--<c:set var="sessionMap" value="${session.user}"/> -->
       <% session.setAttribute("use",session.getAttribute("user"));%>
       <% String k=(String)request.getSession().getAttribute("user"); %>
      
       <li><a href="disp?val=${session.cart}" >CART</a></li>
    <li><s:a href="logout.jsp">LOGOUT</s:a></li></c:when>
<c:otherwise>
<li><s:a href="newjsp.jsp" cssClass="">LOGIN</s:a></li>
<li><s:a href="signup.jsp">SIGN UP</s:a></li>
</c:otherwise>
</c:choose>

<!--            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>-->
        </ul>

    </div>
</div>
            
    </body>
</html>

