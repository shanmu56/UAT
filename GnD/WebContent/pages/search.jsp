<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html
	class=" js backgroundsize cssanimations csstransitions pointerevents"
	lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>G & D</title>
<link href="<c:url value='/resources/css/blazer.css'/>"
	media="screen, projection" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/style.css'/>"
	media="screen, projection" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="<c:url value='/resources/js/modernizr-2.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/blazer.js'/>"></script>
<link rel="stylesheet"
	href="<c:url value='/resources/css/jquery-ui.css'/>">
<script src="<c:url value='/resources/js/jquery-1.10.2.js'/>"></script>
<script src="<c:url value='/resources/js/jquery-ui.js'/>"></script>


<link href="<c:url value='/resources/css/infragistics.theme.css'/>"
	rel="stylesheet" />
<link href="<c:url value='/resources/css/infragistics.css'/>"
	rel="stylesheet" />


<!-- Ignite UI Required Combined JavaScript Files -->
<script src="<c:url value='/resources/js/infragistics.core.js'/>"></script>
<script src="<c:url value='/resources/js/infragistics.lob.js'/>"></script>

</head>



<body>

<%-- 	<% --%>

// 	   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
// 	   response.addHeader("Pragma", "no-cache"); 
// 	   response.addDateHeader ("Expires", 0);
	   
	   
<%--    %> --%>
<%--     <c:if test="${username == null}"> --%>
<!--     	response.sendRedirect("/Gnd/loginuser/logout"); -->
<%-- 	</c:if> --%>
	<%!public static final int Card_Dispatch = 20;
	public static final int Card_Delievered = 21;
	public static final int Card_Returned = 22;
	public static final int Card_ReDispatched = 23;
	public static final int Card_Destroy = 24;

	public static final int PIN_STATUS_MAILER = 70;
	public static final int PIN_STATUS_DISPATCH = 71;
	public static final int PIN_STATUS_DELIVER = 72;
	public static final int PIN_STATUS_RTO = 73;
	public static final int PIN_STATUS_REDISPATCH = 74;
	public static final int PIN_STATUS_TODESTROY = 75;
	public static final int PIN_STATUS_DESTROY = 76;
	public static final int Manual_Destroy=91;
	
	%>
	<style>
#checkboxSelectCombo, #checkboxSelectCombo:hover {
	/*background-color: #f7f8f8 !important;*/
	border: 1px solid #9db5cd !important;
}

.ui-igcombo-buttonicon, .ui-igcombo-clearicon {
	margin-left: 3px;
	margin-top: -7px;
	position: absolute;
	top: 50%;
}

.ui-icon-triangle-1-s {
	background-position: 0;
}

.ui-icon {
	background-position: 0;
	height: 16px;
	width: 16px;
}

#tableid {
	width: 100%;
	max-width: 100%;
	
}

.ui-igcombo-clear {
	display: none !important;
}
</style>


	<div class="page-header" style="position: fixed width:100%">
		<div class="page-header-wrapper container">
			<div class="main-logo">Giesecke &amp; Devrient</div>
	
		 <div class="tab-menu dark">
		 	
                  <ul>
                    	<li id="icons"  ><a href="<c:url value='/loginuser/home'/>">Home</a></li>
                    	<li id="icons" class="selected"><a href="<c:url value='/search/searchcard'/>">Search</a></li>
                    <c:if test="${username eq 'admin'}">
                        <li id="icons"><a href="<c:url value='/master/masterdb'/>">Master DB</a></li>
                        <li id="prototype"><a href="/GnD/shopfloor/misImoprt">MIS Import</a>
<!--                         <li id="styleguide"><a href="#">I/O Config</a></li> -->
<!--                         <li id="screens"><a href="#">Time-Out Config</a></li> -->
						<li id="prototype"><a href="/GnD/notification/getdailymails">Notifications</a>
						<li id="prototype"><a href="/GnD/shopfloor/home">Shop floor</a></li>
<%--                          <li id="icons"><a href="<c:url value='/emailcont/editemailTable'/>">Email</a></li>                      --%>
					</c:if>					  
					  <c:if test="${username eq 'helpdesk'}">
						  <li id="icons"><a href="<c:url value='/master/masterdb'/>">Master DB</a></li>
						  <li id="prototype"><a href="/GnD/shopfloor/misImoprt">MIS Import</a>
						 <!-- <li id="icons"><a href="<c:url value='/master/email'/>">Email</a></li>-->
					  </c:if>  
					   <c:if test="${username eq 'shopfloor'}">
						  <li id="prototype"><a href="/GnD/shopfloor/home">Shop floor</a></li>
					  </c:if>  
					  <c:if test="${username eq 'warehouse'}">
						  <li id="prototype"><a href="/GnD/shopfloor/home">Warehouse</a></li>
						   <li id="prototype"><a href="/GnD/shopfloor/misImoprt">MIS Import</a>
					  </c:if>
					  <c:if test="${username eq 'rto'}">
						  <li id="prototype" ><a href="/GnD/shopfloor/home">RTO</a></li>
					  </c:if> 
					  <c:if test="${username eq 'datagen'}">
                    	<li id="icons" ><a href="<c:url value='/qcprocess'/>">QC</a></li>
					</c:if>
                        <li id="prototype"><a href="/GnD/search/getReport">Reports</a></li>   
					      <li id="prototype"><a href="javascript:formSubmit()"> Logout</a>
					   
                    </ul>
              
                </div> 
                	</div>  

	</div>
	<div class="main" style="">
		<div class="container main-conten">
			<div class="left-content">
				<div class="demo-left-nav" id="left-nav">
					<h4>Search By</h4>
					<div class="navigation">
						<ul>
							<li><a href="${pageContext.request.contextPath}/track">Mobile
									No</a></li>
							<li><a href="${pageContext.request.contextPath}/awbsearch">Card AWB</a></li>
							<li><a href="${pageContext.request.contextPath}/pinawbpage">Pin AWB</a></li>
							<li><a href="${pageContext.request.contextPath}/prerequesttoadd">Bank and ac no </a></li>
							<li><a href="${pageContext.request.contextPath}/rsnpage">RSN </a></li>
							<li><a href="${pageContext.request.contextPath}/prerequest">Branchwise</a></li>
							<li><a href="${pageContext.request.contextPath}/customerid">Customer Id</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
						<form action="${logoutUrl}" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
						</form>
	<div id="footer" class="page-footer">
		<div class="container">
			<div class="footer-columns">
				<div class="footer-left-column">
					<div class="footer-version">
						<strong>Web Tracking Tool</strong> Version 1.0.14
					</div>
					<ul class="footer-links">
						<li><a href="#">Contact</a></li>
						<li><a href="#">Site Terms</a></li>
					</ul>
				</div>
				<div class="footer-right-column">
					<div class="footer-logo"></div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
	  	}
	</script>
	</body>
</html>