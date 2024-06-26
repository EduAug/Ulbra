class CreditCardpayment{
    makePayment(amount){
        console.log(`Paid ${amount} via Credit Card.`);
    }
}

class PaypalPayment{
    sendPayment(amount){
        console.log(`Sent ${amount} via PayPal.`);
    }
}

class PixPayment{
    sendPix(amount){
        console.log(`Sent ${amount} via Pix.`);
    }
}

class PaymentAdapter{
    constructor(payment){
        this.payment= payment;
    }
    pay(amount){
        if(this.payment.makePayment){
            this.payment.makePayment(amount);
        }else if(this.payment.sendPayment){
            this.payment.sendPayment(amount);
        }else if(this.payment.sendPix){
            this.payment.sendPix(amount);
        }else{
            throw new Error("Unsupported payment method.");
        }
    }
}
//Factory cria um novo objeto, adaper "adapta" funções a objs já existentes
const creditCardpayment= new CreditCardpayment();
const ppPayment= new PaypalPayment();
const pixPayment= new PixPayment();

const payAdapt1= new PaymentAdapter(creditCardpayment);
payAdapt1.pay(100);

const payAdapt2= new PaymentAdapter(ppPayment);
payAdapt2.pay(100);

const payAdapt3= new PaymentAdapter(pixPayment);
payAdapt3.pay(250);