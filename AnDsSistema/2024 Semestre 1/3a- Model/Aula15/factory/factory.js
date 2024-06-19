const Audi = require('./audi');
const Mercedes = require('./mercedes');
const Volvo = require('./volvo');

class Factory{
    create(type){
        switch (type) {
            case 'Audi':
                return new Audi();

            case 'Volvo':
                return new Volvo();

            case 'Mercedes':
                return new Mercedes();
            default:
                console.log("Modelo não suportado");
                break;
        }
    }
}
module.exports = new Factory