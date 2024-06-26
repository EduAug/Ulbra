const database= require('./singleton_tde')
const anotherInstance= require('./singleton_tde')

const item0= {
    id: 0,
    name: "Alph",
    password: "wickedWORD"
};
const item1= {
    id: 1,
    name: "Wort",
    password: "12345password"
};

console.log(`Database:`)
const returned= database.get()
for (let index = 0; index < returned.length; index++) {
    console.log(returned[index]);
}
console.log(`Adding items...`)
database.set(item0)
database.set(item1)
console.log(`Fetching...`)
const returned1= database.get()
for (let index = 0; index < returned1.length; index++) {
    console.log(returned1[index]);
}
//Os itens irão para o "database", e o fetch de "database" irá mostrá-los

console.log(`Fetching from the "other instance":`)
const returned2= anotherInstance.get()
for (let index = 0; index < returned2.length; index++) {
    console.log(returned2[index]);
}
//Os mesmos itens serão exibidos, apesar de chamar de outra "instância"
const item2= {
    id: 2,
    name: "Ambessa",
    password: "99852474"
};
console.log(`Inserting into the "other instance"...`)
anotherInstance.set(item2)
//O item é inserido nessa segunda instância
console.log(`Fetching "First" database:`)
const returned3= database.get()
for (let index = 0; index < returned3.length; index++) {
    console.log(returned3[index]);
}
//E ao dar um fetch no primeiro são exibidos os itens antigos e o "novo"
//Devido ao Singleton