<div class="container-fluid">              <!--Não sei se essa parte é realmente necessária-->
    <div class="row">                      <!--Mas pra previnir, deixei as navbars e etc.-->
            <nav class="col-md-3 bg-secondary2 p-3">
                <h2>Menu:</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="menHo" class="nav-link" href="<?=base_url('home')?>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a id="menAb" class="nav-link" href="<?=base_url('about')?>">About</a>
                    </li>
                    <li class="nav-item">
                        <a id="menPr" class="nav-link" href="<?=base_url('products')?>">Products</a>
                    </li>
                    <li class="nav-item">
                        <a id="menCo" class="nav-link" href="<?=base_url('contact')?>">Contact</a>
                    </li>
                </ul>
                <h2>Clientes:</h2>
                <ul class="nav flex-column">
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="?controller=client&action=register">Cadastro</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('listClients')?>">Listagem de clientes</a>
                    </li>
                </ul>

            </nav>
        <div class="col-md-9">
            <section>
