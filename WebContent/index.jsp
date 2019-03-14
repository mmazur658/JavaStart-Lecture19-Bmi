<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>BMI Calculator</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.3/js/toastr.js"></script>
		<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.3/css/toastr.css" rel="stylesheet"/>
		<script type="text/javascript" src="/log-reg-form-ajax.js"></script>
		<script type="text/javascript" src="/toastr-alert.js"></script>
	</head>
	<body>	
        <div class="container mt-5 mx-auto">
	        <div class="row mx-auto">
	        	<div class="col-md-5 mx-auto">
<!-- LOGIN FORM  -->	
					<p class="h3 text-muted mt-3">Logowanie</p>
					<hr>
		            <form action="login" method="post">
		                 <div class="form-group">
		                     <input name="nickLogin" type="text" class="form-control" placeholder="Login">
		                 </div>
		                 <div class="form-group">
		                     <input name="passwordLogin" type="password" class="form-control" placeholder="Hasło">
		                 </div>               
						<div class="row">
							<div class="col-md-6">
								<button type="submit" class="btn btn-block btn-secondary my-1">Zaloguj</button>
							</div>
							<div class="col-md-6">
								<button type="reset" class="btn btn-block btn-secondary my-1">Wyczyść</button>
							</div>
						</div>                
		            </form>
	        	</div>
<!-- /LOGIN FORM  -->
<!-- /REGISTER FORM  -->
	        	<div class="col-md-5 mx-auto">
	        		<p class="h3 text-muted mt-3">Nowe konto</p>
					<hr>
		        	<form action="register" method="post" id="registerForm">
		                 <div class="form-group">
		                     <input id="nickReg" name="loginRegister" type="text" class="form-control" placeholder="Login">
		                 </div>
		                 <div class="form-group">
		                     <input id="passReg" name="passwordRegister" type="password" class="form-control" placeholder="Hasło">
		                 </div>               
						<div class="row">
							<div class="col-md-6">
								<button type="submit" class="btn btn-block btn-secondary my-1">Nowe konto</button>
							</div>
							<div class="col-md-6">
								<button type="reset" class="btn btn-block btn-secondary my-1">Wyczyść</button>
							</div>
						</div>                
		            </form>   
	        	</div> 
<!-- /REGISTER FORM  -->
	        </div>
		</div>   
	</body>
</html>
