class Payment{
    constructor(amount){
        this.amount= amount
    }

    pay(){
        return this.amount;
    }
}

class CreditCardPayment extends Payment{
    pay(){
        super.pay()
    }
}

class TaxedDecorator {
    constructor(payment){
        this.payment= payment
    }

    pay(){
        const amount= this.payment
        const taxedAmount= amount * 1.1
        console.log(`Pay ${taxedAmount} (After taxes)`)
        return taxedAmount
    }
}

class DiscountDecorator {
    constructor(payment){
        this.payment= payment
    }

    pay(){
        const amount= this.payment
        const discountedAmount= amount * 0.9
        console.log(`Pay ${discountedAmount} (After discounting)`)
        return discountedAmount
    }
}
let payment= new CreditCardPayment(100);

payment= new DiscountDecorator(payment);
payment.pay()

payment= new TaxedDecorator(payment);
payment.pay()