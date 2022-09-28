<table class="table">
    <tr class="bg-secondary3">
        <th class="bg-secondary4">ID do item</th>
        <th class="bg-secondary4">Nome</th>
        <th class="bg-secondary4">Fabricante</th>
        <th class="bg-secondary4">Estoque</th>
        <th class="bg-secondary4">Valor Unitário</th>
    </tr>

    <?php
        foreach($arrayProducts as $product2){
    ?>
        <tr class="bg-secondary5">
            <td class="bg-secondary6">
                <?=$product2['idClient']?>
            </td>
            <td class="bg-secondary6">
                <?=$product2['name']?>
            </td>
            <td class="bg-secondary6">
                <?=$product2['email']?>
            </td>
            <td class="bg-secondary6">
                <?=$product2['phone']?>
            </td>
            <td class="bg-secondary6">
                <?=$product2['address']?>
            </td>
        </tr>

    <?php
        }
    ?>

</table>
</div>
    
</section>
        </div>
    </div>
</div>