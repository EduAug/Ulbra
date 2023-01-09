<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<!--CSS-->
    <link rel="stylesheet" href="<?=base_url('assets/css/stylesLogin.css')?>">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid bg-login" >
	<!--div style="vertical-align:center"-->
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4 p-5 bg-login-info">
				<h1 class="text-center">Admin Access</h1>
				<form action="<?=base_url('admin/validateLogin')?>" method=POST name="formulario" id="formulario">
					<div class="form-group">
						<label>User</label>
						<input type="text" class="form-control" name="userName" placeholder="User...">				
					</div>
					<div class="form-group">
						<label>Password</label>
						<input type="password" class="form-control" name="password" placeholder="Password...">
					</div>	
					<input class="btn btn-custom" type="submit" name="Enviar" value="Sign In">
				</form>
			</div>	
			<div class="col-md-4"></div>	
		</div> 
	</div>
</body>
</html>