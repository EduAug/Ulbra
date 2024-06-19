const singleton = require('./singleton')

const item = {
    ip: "129.029.192.049",
    port: "4029",
    database: "banco_o_balaco"
};

console.log(`Data at first: ${singleton.getData()}`);
console.log(`Adding data...`);
singleton.setData(item);
console.log(`New data: ${singleton.getData()}`);