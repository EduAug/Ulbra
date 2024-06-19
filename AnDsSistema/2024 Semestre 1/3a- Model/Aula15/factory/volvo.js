const Carro = require('./carro')

class Volvo extends Carro{
    constructor(){
        super("Volvo")
    }
}
module.exports = Volvo;