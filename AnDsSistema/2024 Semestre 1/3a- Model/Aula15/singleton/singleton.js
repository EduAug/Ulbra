class Singleton {
    constructor(){
        if(!Singleton.instance){
            this.data = [];
            Singleton.instance = this;

        }
        return Singleton.instance;
    }

    getData(){
        return this.data;
    }
    setData(item){
        this.data.push(item);
    }
}
const instance= new Singleton();
module.exports = instance;