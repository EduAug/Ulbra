    <h1 class='fw-bold text-center'>Cadastro de cliente</h1>

    <div class="m-3">
        <form action="?controller=client&action=registerView" method="post">
            <div>
                <label class="form-label" for="">Nome: </label>
                <input type="form-control" name="name">
            </div>
            <div>
                <label class="form-label" for="">Login: </label>
                <input type="form-control" name="email">
            </div>

        <hr>
        <p>Informe seu gênero:</p>
            <input type="radio" id="male" name="gender" value="Masculino">
            <label for="Masculino">Masculino</label><br>
            <input type="radio" id="fem" name="gender" value="Feminino">
            <label for="Feminino">Feminino</label><br>
            <input type="radio" id="other" name="gender" value="Outro">
            <label for="Outro">Outro</label><br>

        <hr>
        <p>Quais dos tipos de imóveis abaixo você possui?</p>
            <input type="checkbox" id="imovel1" name="imovel1" value="Casa">
            <label for="imovel1">Casa</label><br>
            <input type="checkbox" id="imovel2" name="imovel2" value="Apartamento">
            <label for="imovel2">Apartamento</label><br>
            <input type="checkbox" id="imovel3" name="imovel3" value="Outro">
            <label for="imovel3">Outro</label><br>

        <hr>
        <p>Como você descreveria sua experiência com a empresa?</p>
            <textarea name="exp" id="exp" cols="100" rows="5"></textarea><br>

        <hr>
        <p>Qual o período preferido para sua função?</p>
        <select class="mb-5" name="hora" id="hora">
            <option value="Manhã">Manhã</option>
            <option value="Tarde">Tarde</option>
            <option value="Noite">Noite</option>
        </select><br>
        
            <button class="btn btn-success" type="submit">Cadastrar</button>
        </form>
        
    </div>

</section>
        </div>
    </div>
</div>