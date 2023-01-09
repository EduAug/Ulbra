<div class="container-fluid">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-8 border-custom2">
            <section>

                <h1 class="m-3">Check out who's our VIPs</h1>

                <table class="table">
                    <tr class="bg-secondary3">
                        <th class="bg-secondary4">Client ID</th>
                        <th class="bg-secondary4">Name</th>
                        <th class="bg-secondary4">email address</th>
                        <th class="bg-secondary4">Phone number</th>
                        <th class="bg-secondary4">Address</th>
                        <th class="bg-secondary4">Details</th>
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
                                <a href="<?=base_url("client/detailsClient/{$client['idClient']}")?>">
                                    Info <?=$client['idClient']?>
                                </a>
                            </td>
                        </tr>

                    <?php
                        }
                    ?>

                </table>
