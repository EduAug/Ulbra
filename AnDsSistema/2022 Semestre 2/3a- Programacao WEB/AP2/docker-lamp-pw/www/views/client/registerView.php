<h1 class='fw-bold text-center'>Revisão de Cadastro</h1>

    <table>
        <tr class="m-3">
            <th>Nome:</th>
            <td>
                <?=
                    $arrayClient['name']
                ?>
            </td>
        </tr>
        <tr class="m-3">
            <th>E-Mail:</th>
            <td>
                <?=
                    $arrayClient['email']
                ?>
            </td>
        </tr>
        <tr class="m-3">
            <th>Gênero:</th>
            <td>
                <?=
                    $arrayClient['genderShow']
                ?>
            </td>
        </tr>
            <th>Imóveis:</th>
            <td>
                <?php
                    if($arrayClient['imo1']){
                        echo 'Casa';
                    }
                    echo '<br>';
                ?>
                <?php
                    if($arrayClient['imo2']){
                        echo 'Apartamento';
                    }
                    echo '<br>';
                ?>
                <?php
                    if($arrayClient['imo3']){
                        echo 'Outro';
                    }
                    echo '<br>';
                ?>
            </td>
        </tr>
        <tr class="m-3">
            <th>Mensagem:</th>
            <td>
                <?=
                    $arrayClient['message']
                ?>
            </td>
        </tr>
        <tr class="m-3">
            <th>Horario:</th>
            <td>
                <?=
                    $arrayClient['hora']
                ?>
            </td>
        </tr>
    </table>

</section>
        </div>
    </div>
</div>