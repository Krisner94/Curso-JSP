<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>Document</title>
</head>
<style>
    h1 {
        display: flex;
        justify-content: center;
    }

    .center {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        position: relative;
    }

    /*.alert {*/
    /*    position: relative; !* Adicione esta linha *!*/
    /*    top: 0; !* Adicione esta linha *!*/
    /*    width: 100%; !* Adicione esta linha *!*/
    /*    margin-bottom: 1rem;*/
    /*}*/
</style>
<body>
<h1>Bem-vindo ao curso de JSP</h1>

<div class="center">
	<form action="ServletLogin" method="post">
		<div class="alert alert-danger text-center" id="myAlert" role="alert">
			${msg}
		</div>
		<div class="card" style="width: 20rem;">
			<div class="card-body">
				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="floatingInput" placeholder="Login" name="login">
					<label for="floatingInput">Login</label>
				</div>
				<div class="form-floating mb-3">
					<input type="password" class="form-control" id="floatingPassword" placeholder="Senha" name="senha">
					<label for="floatingPassword" class="form-label">Senha</label>
				</div>
				<div>
					<label title="Mostrar Senha">
						<input type="checkbox" onclick="seePassword()">
					</label>
				</div>
				<div class="d-grid gap-2">
					<input type="submit" class="btn btn-primary">
				</div>
			</div>
		</div>
	</form>
</div>
</body>
<script>
    function seePassword() {
        let x = document.getElementById("floatingPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    $(document).ready(function () {
        setTimeout(function () {
            $('#myAlert').fadeOut('slow');
        }, 5000);
    });
</script>
</html>
