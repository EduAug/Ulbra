<div class="container-fluid">              <!--Não sei se essa parte é realmente necessária-->
    <div class="row">                      <!--Mas pra previnir, deixei as navbars e etc.-->
            <nav class="col-md-3 bg-secondary2 p-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="menHo" class="nav-link" href="?pages=home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a id="menAb" class="nav-link" href="?pages=about">About</a>
                    </li>
                    <li class="nav-item">
                        <a id="menPr" class="nav-link" href="?pages=products">Products</a>
                    </li>
                    <li class="nav-item">
                        <a id="menCo" class="nav-link" href="?pages=contact">Contact</a>
                    </li>
                </ul>
            </nav>
        <div class="col-md-9 ">
            <section>                      <!--Se eu tirasse o php do section-->
                                <!--Ao ser carregado, será que sobrescreveria a navbar e etc.?-->
                <?php
                    if(isset($_GET['pages'])){
                        if($_GET['pages']=='home'){
                            include('assets/pages/home.php');
                        }
                        if($_GET['pages']=='about'){
                            include('assets/pages/about.php');
                        }
                        if($_GET['pages']=='products'){
                            include('assets/pages/products.php');
                        }
                        if($_GET['pages']=='contact'){
                            include('assets/pages/contact.php');
                        }
                    }else{#Caso nenhum dos botões do menu seja usado, vai pra home, uma vez que só dá pra navegar via menu, isso deve ser automático e só quando a página for carregada pela primeira vez
                        include('assets/pages/home.php');
                    }
                ?>

            </section>
        </div>
    </div>
</div>