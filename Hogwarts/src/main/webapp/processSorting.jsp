<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" ></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_sorting.css" rel="stylesheet" />
<title>House Sorting</title>
</head>

<%!
	int H = 0;
	int G = 0;
	int R = 0;
	int S = 0;
	
	int resultH = 0;
	int resultG = 0;
	int resultR = 0;
	int resultS = 0;
%>

<%
	request.setCharacterEncoding("utf-8");

	Enumeration paramNames = request.getParameterNames();
	
	while (paramNames.hasMoreElements()) {
		String name = (String) paramNames.nextElement();
		String paramValue = request.getParameter(name);
		
		if (name.equals("q9")){
			if (paramValue.equals("H"))
				H += 2;
			if (paramValue.equals("G"))
				G += 2;
			if (paramValue.equals("R"))
				R += 2;
			if (paramValue.equals("S"))
				S += 2;	
		}
		else {
			if (paramValue.equals("H"))
				H += 1;
			if (paramValue.equals("G"))
				G += 1;
			if (paramValue.equals("R"))
				R += 1;
			if (paramValue.equals("S"))
				S += 1;	
		}
	}
	
	resultH = H * 10;
	resultG = G * 10;
	resultR = R * 10;
	resultS = S * 10;
%>

<body>
<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="./final.jsp">Main Page</a>
        </div>
    </nav>
    
<!-- Page Header-->
    <header class="masthead" style="background-image: url('./resources/html/dorm.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Your house is!</h1><br>
                        <h5>밑으로 스크롤해서 확인하세요.</h5>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">

    		<div class="post-preview" style="text-align: center;">
        		<h2 class="post-title">Test Result</h2><br><br>
        		<h4 class="post-subtitle">그리핀도르 - <%=resultG %>%</h4><br>
        		<h4 class="post-subtitle">슬리데린 - <%=resultS %>%</h4><br>
        		<h4 class="post-subtitle">후플푸프 - <%=resultH %>%</h4><br>
        		<h4 class="post-subtitle">레번클로 - <%=resultR %>%</h4><br>
    		</div>
    		<br>

            </div>
        </div>
    </div>


</body>
</html>
