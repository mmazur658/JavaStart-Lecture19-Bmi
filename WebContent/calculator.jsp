<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Kalkulator BMI</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.3/js/toastr.js"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.3/css/toastr.css" rel="stylesheet"/>
	<script type="text/javascript" src="/calculator-ajax.js"></script>	
	<script type="text/javascript" src="/toastr-alert.js"></script>
</head>
<body>
	<div class="container mt-5" style="max-width: 500px;">
		<p class="h3 text-muted mt-3 text-center">Kalkulator BMI</p>
		<hr>
		<form action="calculate" method="post" id="bmicalcform">
			<div class="form-group">
				<input id="bmiWeight" name="weight" type="text" class="form-control" placeholder="Waga">
			</div>
			<div class="form-group">
				<input id="bmiHeight" name="height" type="text" class="form-control" placeholder="Wzrost">
			</div>               
			<div class="row">
				<div class="col-md-6">
					<button type="submit" class="btn btn-block btn-secondary my-1">Oblicz</button>
				</div>
				<div class="col-md-6">
					<button type="reset" class="btn btn-block btn-secondary my-1">Wyczyść</button>
				</div>
			</div>                
	    </form>
	<p id="bmiPlaceholder" class="h3 mt-5 text-muted text-center"></p>
	</div>
</body>
</html>