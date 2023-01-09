<h1>Alterando Cliente</h1>
<form class="form" action="<?=base_url("admin/updateClientAction/{$arrayClient['idClient']}")?>" method="post">
    <div class="mb-3 mt-3">                             <!--NEW NEW NEW-->
        <label class="form-label">Nome</label>
        <input name="name" class="form-control" type="text" value="<?=$arrayClient['name']?>">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Email</label>
        <input name="email" class="form-control" type="email" value="<?=$arrayClient['email']?>">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Telefone</label>
        <input name="phone" class="form-control" type="text"  value="<?=$arrayClient['phone']?>">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Endereço</label>
        <input name="address" class="form-control" type="text"  value="<?=$arrayClient['address']?>">
    </div>
    
    <input class="btn btn-primary" type="submit" value="Enviar">
</form>