<div class="container-fluid">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-8 border-custom2">
            <section>
                <h1>Get to know reader "<?=$arrayClient['name']?>"</h1>
                <table class="table">
                    <tr>

                    <th>
                        Client ID
                    </th>
                    <td>
                        <?=$arrayClient['idClient']?>
                    </td>

                    </tr>
                    <tr>

                    <th>
                        Reader Name
                    </th>
                    <td>
                        <?=$arrayClient['name']?>
                    </td>

                    </tr>
                    <tr>

                    <th>
                        Reader e-Mail Address
                    </th>
                    <td>
                        <?=$arrayClient['email']?>
                    </td>

                    </tr>
                    <tr>

                    <th>
                        Reader Phone Number
                    </th>
                    <td>
                        <?=$arrayClient['phone']?>
                    </td>

                    </tr>
                    <tr>

                    <th>
                        Mailbox
                    </th>
                    <td>
                        <?=$arrayClient['address']?>
                    </td>

                    </tr>
                </table>