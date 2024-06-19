const Carro = require('./carro')

class Mercedes extends Carro{
    constructor(){
        super("Mercedes")
    }
}

module.exports = Mercedes;