<h1>Listagem de clientes:</h1>

<table class="table">
    <tr class="bg-secondary3">
        <th class="bg-secondary4">ID do cliente</th>
        <th class="bg-secondary4">Nome</th>
        <th class="bg-secondary4">Email</th>
        <th class="bg-secondary4">Telefone</th>
        <th class="bg-secondary4">Endereço</th>
        <th>Ações</th>
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
                    Alterar <?=$client['idClient']?>
                </a>
            </td>               <!--NEW NEW NEW ↨-->
            <td class="bg-secondary6">
                <a href="<?=base_url("admin/deleteClient/{$client['idClient']}")?>">
                    Deletar <?=$client['idClient']?>
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
