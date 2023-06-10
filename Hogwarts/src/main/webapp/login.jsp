<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/styles_login.css">
<link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">
<title>Login</title>
</head>
<body class="img js-fullheight" style="background-image: url(./resources/html/backg.jpg); background-color: black;">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login Here</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Have an account?</h3>
		      	
		      	<%
		      		String error = request.getParameter("error");
		      		if (error != null) {
		      			out.println("Please check your ID and PASSWORD!");
		      		}
		      	%>
		      	
		      	<form action="j_security_check" method="post" class="signin-form">
		      		<div class="form-group">
		      			<input type="text" class="form-control" placeholder="Username" name="j_username" required>
		      		</div>
	            <div class="form-group">
	              <input type="password" class="form-control" placeholder="Password" name="j_password" required>
	              <span class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">Login</button>
	            </div>
	          </form>
		      </div>
				</div>
			</div>
		</div>
	</section>

  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

</body>
</html>
