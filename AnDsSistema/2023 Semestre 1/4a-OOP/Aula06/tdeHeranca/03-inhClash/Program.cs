using _03_inhClash;

// Preferencialmente limitar a distribuição de pontos em 8
SuperHero sh = new SuperHero("Daredevil",3,2,3);
SuperVillain sv = new SuperVillain("Red Skull",1,3,4);

// 4 "turnos" após trocações
int hpVillain = 4;
int hpHero = 4;
bool blVillain = true;
bool blHero = true;
bool lsVillain = true;
bool lsHero = true;

// O primeiro a se mover pode ser tanto o que possui maior Intelligence
// Como pode ser decidido no cara ou coroa, ou gerado de número aleatório.

// Pode ser implementado while (hpHero > 0 || hpVillain > 0){}
// Para fins de simplicidade, vou no "braço" mesmo

SVMelee();
SHMelee();

battleStts();

sv.SuperStrength(sv.Abilities);
sh.SuperIntelligence(sh.Abilities);

battleStts();

SVRange();
SHMelee();

battleStts();

SVMelee();
SHBlock();

battleStts();

SVRange();
sh.PowerUp();

battleStts();

SHBlock();
SVRange();
SHMelee();

battleStts();

sv.SuperStrength(sv.Abilities);
sh.SuperStrength(sh.Abilities);

battleStts();

SVRange();
SHMelee();

battleStts();

sv.SuperIntelligence(sv.Abilities);
sh.SuperIntelligence(sh.Abilities);

battleStts();

SVRange();
sh.SuperIntelligence(sh.Abilities);

battleStts();

sv.PowerUp();
SHMelee();

battleStts();

SVRange();
SHMelee();

battleStts();


// Exibir Pontos de Vida e Propriedades dos combatentes

void battleStts(){
    
    checkSecondWind();
    Console.WriteLine("Battle Status:");
    Console.WriteLine(sh.Name+": "+hpHero+" | "+sv.Name+": "+hpVillain);
    sh.displayStatus();
    sv.displayStatus();
    
    if(hpHero <= 0){

        Console.WriteLine("Evil has triumphed and justice has been trampled, who`ll save use now");
        Console.WriteLine("Tune in next time, honorable viewer and true believer");
    }
    if(hpVillain <= 0){

        Console.WriteLine("Light was victorious, and once more, darkness was vanquished");
        Console.WriteLine("Tune in next time, honorable viewer and true believer");
    }
}



void SHMelee(){

    Console.WriteLine(sh.Name+" has thrown a melee attack");
    if(sh.AttackMelee(sv) == 2 && blVillain == true){

        hpVillain -= 1;
        Console.WriteLine("A clean hit!");
    }else if(sh.AttackMelee(sv) == 1 && blVillain == false){

        hpHero -= 1;
        Console.WriteLine(sv.Name+" parried the attack!");
    }else{

        Console.WriteLine(sh.Name+" missed!");
    }
}
void SHRange(){
    

    Console.WriteLine(sh.Name+" has struck from afar");
    if(sh.AttackRange(sv) == 2 && blVillain == true){

        hpHero -= 1;
        Console.WriteLine("A clean hit!");
    }else if(sh.AttackRange(sv) == 1 && blVillain == false){

        hpHero -= 1;
        Console.WriteLine(sv.Name+" reflected the move!");
    }else{

        Console.WriteLine(sh.Name+" missed!");
    }
}
void SHBlock(){

    if(sh.Block(blHero) == 1){

        blHero = false;
    }else{

        blHero = true;
    }
}
// ----------- Diferenciando tipos de ataque em métodos
// ----------- Uma vez que a "Vida" foi criada no Program.cs
void SVMelee(){

    Console.WriteLine(sv.Name+" has thrown a melee attack");
    if(sv.AttackMelee(sh) == 2 && blHero == true){

        hpHero -= 1;
        Console.WriteLine("A clean hit!");
    }else if(sv.AttackMelee(sh) == 1 && blHero == false){

        hpVillain -= 1;
        Console.WriteLine(sh.Name+" parried the attack!");
    }else{

        Console.WriteLine(sv.Name+" missed!");
    }
}
void SVRange(){

    Console.WriteLine(sv.Name+" has struck from afar");
    if(sv.AttackRange(sh) == 2 && blHero == true){

        hpHero -= 1;
        Console.WriteLine("A clean hit!");
    }else if(sv.AttackRange(sh) == 1 && blHero == false){

        hpVillain -= 1;
        Console.WriteLine(sh.Name+" reflected the move!");
    }else{

        Console.WriteLine(sv.Name+" missed!");
    }
}
void SVBlock(){

    if(sv.Block(blVillain) == 1){

        blVillain = false;
    }else{

        blVillain = true;
    }
}


// Buffs de última medida ao chegar em uma quantia X de HP

void checkSecondWind(){

    if (sv.WickedWill(hpVillain,lsVillain) == false){

        lsVillain = false;
    }


    if (sh.ParagonOfHope(hpHero,lsHero) == false){

        lsHero = false;
    }
}