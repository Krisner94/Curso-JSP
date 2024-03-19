<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<h1>Olá Mundo</h1>

<form action="ServletLogin" method="post">
    <label>
        <div class="mb-3">
            <input name="nome" type="text" class="form-control" placeholder="Nome">
        </div>
        <div class="mb-3">
            <input name="idade" type="text" class="form-control" placeholder="Idade">
        </div>
        <div class="mb-3">
            <input type="submit" class="btn btn-primary">
        </div>
    </label>
</form>
</body>
</html>
