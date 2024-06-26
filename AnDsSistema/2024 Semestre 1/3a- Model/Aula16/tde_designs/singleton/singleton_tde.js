class SingleDB{
    constructor(){
        if(!SingleDB.instance){
            this.data= [];
            SingleDB.instance= this;
        }
        return SingleDB.instance;
    }

    get(){
        return this.data;
    }
    set(item){
        this.data.push(item);
    }
}
const instance= new SingleDB();
module.exports= instance