        <div class="col-md-8 border-custom2">
            <div class="row mt-3">
                <div class="col-md-4">
                    <h1>Client info</h1>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <form action="<?=base_url("admin/getClientsFor/")?>" method="post">
                        <div class="row">
                            <div class="col-md-8">
                                <input name="search" class="form-control" type="text">
                            </div>
                             <div class="col-md-4">
                                <input class="btn btn-custom mb-3" type="submit" value="Browse">
                            </div>
                        </div>
                    </form>
                </div>
        </div>
        <table class="table">
            <tr class="bg-secondary3">
                <th class="bg-secondary4">Client ID</th>
                <th class="bg-secondary4">Name</th>
                <th class="bg-secondary4">email address</th>
                <th class="bg-secondary4">Phone number</th>
                <th class="bg-secondary4">Address</th>
                <th class="bg-secondary4">Actions</th>
                <th class="bg-secondary4"></th>
            </tr>

            <?php
                foreach($arrayClients as $client){
            ?>
                <tr class="bg-secondary5">
                    <td class="bg-secondary6">
                        <?=$client['idClient']?>
                    </td>
                    <td class="bg-secondary6">
                        <?=$client['name']?>
                    </td>
                    <td class="bg-secondary6">
                        <?=$client['email']?>
                    </td>
                    <td class="bg-secondary6">
                        <?=$client['phone']?>
                    </td>
                    <td class="bg-secondary6">
                        <?=$client['address']?>
                    </td>
                    <td class="bg-secondary6">
                        <a href="<?=base_url("admin/updateClient/{$client['idClient']}")?>">
                            Update <?=$client['idClient']?>
                        </a>
                    </td>
                    <td class="bg-secondary6">
                        <a href="<?=base_url("admin/deleteClient/{$client['idClient']}")?>">
                            DELETE <?=$client['idClient']?>
                        </a>
                    </td>
                </tr>

            <?php
                }
            ?>

        </table>

</section>
        </div>
    </div>
</div>
