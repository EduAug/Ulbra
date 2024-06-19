const Factory = require("./factory");

const Audi= Factory.create("Audi")
const Mercedes= Factory.create("Mercedes")
const Volvo= Factory.create("Volvo")

Audi.getCarro();
Mercedes.getCarro();
Volvo.getCarro();
