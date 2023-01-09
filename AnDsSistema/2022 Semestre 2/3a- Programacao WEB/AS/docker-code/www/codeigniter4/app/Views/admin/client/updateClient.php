<div class="col-md-8 border-custom2">
    <h1 class="border-bottom border-dark border-3">Update Client info</h1>
    <form class="form" action="<?=base_url("admin/updateClientAction/{$arrayClient['idClient']}")?>" method="post">
        <div class="mb-3 mt-3">                             
            <label class="form-label">Name</label>
            <input name="name" class="form-control" type="text" value="<?=$arrayClient['name']?>">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Email</label>
            <input name="email" class="form-control" type="email" value="<?=$arrayClient['email']?>">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Phone</label>
            <input name="phone" class="form-control" type="text"  value="<?=$arrayClient['phone']?>">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Address</label>
            <input name="address" class="form-control" type="text"  value="<?=$arrayClient['address']?>">
        </div>
        
        <input class="btn btn-custom mb-3" type="submit" value="Update">
    </form>
    
</section>
        </div>
    </div>
</div>