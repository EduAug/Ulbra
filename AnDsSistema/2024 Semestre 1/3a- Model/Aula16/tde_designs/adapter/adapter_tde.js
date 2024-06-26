class YuGiOh{
    startDuel(lifepoints){
        console.log(`Duel started. Each player has ${lifepoints} LP.`)
    }
}

class PokemonTCG{
    startBattle(prizecards){
        console.log(`Battle started. Each player has ${prizecards} Prize Cards.`)
    }
}
class UNO{
    begin(starterhand){
        console.log(`The match begins. Each player has ${starterhand} cards.`)
    }
}

class CardGameAdapter{
    constructor(game){
        this.game= game;
    }
    startGame(total){
        if(this.game.startDuel){
            this.game.startDuel(total);
        }else if(this.game.startBattle){
            this.game.startBattle(total);
        }else if(this.game.begin){
            this.game.begin(total);
        }else{
            throw new Error("Unsupported game");
        }
    }
}
const ygo= new YuGiOh();
const ptcg= new PokemonTCG();
const uno= new UNO();

const adapter1= new CardGameAdapter(ygo);
adapter1.startGame(4000);
const adapter2= new CardGameAdapter(ptcg);
adapter2.startGame(6);
const adapter3= new CardGameAdapter(uno);
adapter3.startGame(7);