function gen_num(){
    let res = Math.random();

    if(res > 0.5)
        return 1;
    return 0;
}

function gen_indiv(){
    return {
        peso1 : gen_num(),
        peso2 : gen_num(),
        entrada1 : gen_num(),
        entrada2 : gen_num()
    }
}

const popul = [];

function gen_pop(size){
    size = 10;

    for (let i = 0; i < size; i++)
    {
        popul.push(gen_indiv());
    }
}

function apt_test(population){
    for (let i = 0; i < 6; i++){
        const randomSuc = parseInt(Math.random()*population.length);
        population.splice(randomSuc,1);
    }
}

function cross(toCross){
    const children = [];
    for (let i = 0; i < toCross.length; i++) {
        const father = toCross[i];
        i++;
        const mother = toCross[i];
        
        let child1 = {
            peso1 : mother.peso1 === 1 ? 0 : 1,
            peso2 : father.peso2,
            entrada1: father.entrada1 === 1 ? 0 : 1,
            entrada2 : father.entrada2
        };
        
        let child2 = {
            peso1 : father.peso1 === 1 ? 0 : 1,
            peso2 : mother.peso2,
            entrada1: mother.entrada1 === 1 ? 0 : 1,
            entrada2 : mother.entrada2
        };
        children.push(child1,child2);
    }
    return children;
}

function mutate(toMutate){
    toMutate.forEach(mutant => {
        const gene = parseInt(Math.random()*4);
        
        switch (gene){
            case 0:
                console.log("Pré: ",mutant.peso1);
                mutant.peso1 = mutant.peso1 === 1 ? 0 : 1;
                console.log("Pós: ",mutant.peso1);
                break;
            case 1:
                console.log("Pré: ",mutant.peso2);
                mutant.peso2 = mutant.peso2 === 1 ? 0 : 1;
                console.log("Pós: ",mutant.peso2);
                break;
            case 2:
                console.log("Pré: ",mutant.entrada1);
                mutant.entrada1 = mutant.entrada1 === 1 ? 0 : 1;
                console.log("Pós: ",mutant.entrada1);
                break;
            case 3:
                console.log("Pré: ",mutant.entrada1);
                mutant.entrada2 = mutant.entrada2 === 1 ? 0 : 1;
                console.log("Pós: ",mutant.entrada1);
                break;
            default:
                break;
        }
    });
    return toMutate;
}

function nat_selec(tested){
    const mutated = tested.slice(0, 2);
    const crossed = tested.slice(2, 4);

    const mutants = mutate(mutated);
    const children = cross(crossed);
    popul.push(mutants,children);
}


gen_pop(10);
console.log("Inicial:",popul);

apt_test(popul);
console.log("Pós-Aptidão:",popul);

nat_selec(popul);
console.log("Final:",popul);
