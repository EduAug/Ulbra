<div class="col-md-8 border-custom2">
    <h1 class="border-bottom border-dark border-3">Add a new Client</h1>
    <form class="form" action="<?=base_url('admin/insertClientAction')?>" method="post">
        <div class="mb-3 mt-3">
            <label class="form-label">Name</label>
            <input name="name" class="form-control" type="text">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Email</label>
            <input name="email" class="form-control" type="email">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Phone</label>
            <input name="phone" class="form-control" type="text">
        </div>
        <div class="mb-3 mt-3">
            <label class="form-label">Address</label>
            <input name="address" class="form-control" type="text">
        </div>
        
        <input class="btn btn-custom mb-3" type="submit" value="Create">
    </form>
    
</section>
        </div>
    </div>
</div>