<h1>Inserindo Cliente</h1>
<form class="form" action="?controller=client&action=insertClientAction" method="post">
    <div class="mb-3 mt-3">
        <label class="form-label">Nome</label>
        <input name="name" class="form-control" type="text">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Email</label>
        <input name="email" class="form-control" type="email">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Telefone</label>
        <input name="phone" class="form-control" type="text">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Endereço</label>
        <input name="address" class="form-control" type="text">
    </div>
    
    <input class="btn btn-primary" type="submit" value="Enviar">
</form>