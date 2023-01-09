<div class="container-fluid">
    <div class="row">
            <nav class="col-md-3 p-3">
                <h2>Menu:</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                                            <!--mudar controller para site-->
                        <a class="nav-link" href="<?=base_url('/admin')?>">Home</a>
                    </li>
                </ul>
                <h2>Clientes</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                                            <!--mudar controller para site-->
                        <a class="nav-link" href="<?=base_url('/admin/listClients')?>">Listar Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=base_url('/admin/insertClient')?>">Adicionar Cliente</a>
                    </li>
                </ul>

            </nav>
        <div class="col-md-9">
            <section>
