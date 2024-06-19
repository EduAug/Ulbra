class Carro {
    constructor(name){
        this.name = name;
    }
    getCarro(){
        console.log(`Nome: ${this.name}`);
    }
}

module.exports = Carro