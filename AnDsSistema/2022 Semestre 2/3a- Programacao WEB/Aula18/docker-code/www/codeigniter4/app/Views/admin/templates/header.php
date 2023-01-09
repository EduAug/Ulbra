<!DOCTYPE html>
<html lang="en">
                    <!-- Não sei se essa parte é necessária, mas quando fui tirar, o site-->
                    <!-- Simplesmente quebrou, então melhor deixar por aqui quietinho-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aula 15</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">
    <!-- CSS -->
    <link rel="stylesheet" href="<?=base_url('assets/css/stylesAdm.css')?>">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- JS -->
    <script src="assets/js/script.js"></script>
</head>

<header>
    <div class="text-center">
        <h1 class="p-4 fw-bold">Área Administrativa</h1>
        <a class="h4" href="<?=base_url('admin/logout')?>">Sair</a>
    </div>
</header>

</html>