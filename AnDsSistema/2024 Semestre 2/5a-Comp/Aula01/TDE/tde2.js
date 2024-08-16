const lista= [0,2,6541,651,1,2453,785,9,440,5,94]

function oddsOrEven(list){
    for(i= 0; i < list.length; i++){
        if(list[i]%2==0){
            console.log("É par")
        }else{
            console.log("É ímpar")
        }
    }
}

oddsOrEven(lista)