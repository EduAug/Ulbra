const Carro = require('./carro')

class Audi extends Carro{
    constructor(){
        super("Audi")
    }
}

module.exports = Audi;