

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/components/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  String cardNumber="";
  String expiryDate="";
  String cardHolderName="";
  String cvvCode="";
  bool isCvvFocused=false;
  
  //User wants to pay
  void userTappedPay(){
    if(formKey.currentState!.validate()){
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Confirm payment"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Card Number : $cardNumber"),
                  Text("Expiry Date : $expiryDate"),
                  Text("Card Holder name : $cardHolderName"),
                  Text("CVV : $cvvCode"),
                ],
              ),
            ),
            actions: [
              //cancel Button
              TextButton(
                  onPressed: ()=>Navigator.pop(context),
                  child: Text("Cancel"),
              ),
              
              //yes button
              TextButton(
                  onPressed: (){
                       Navigator.pop(context);
                       Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryProgressPage(),));
                    },
                  child: Text("Yes"))
            ],
          ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // credit card
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {
        
                },
            ),
            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber=data.cardNumber;
                    expiryDate=data.expiryDate;
                    cardHolderName=data.cardHolderName;
                    cvvCode=data.cvvCode;
        
                  });
                },
                formKey: formKey
            ),
            //Spacer(),
            SizedBox(height: 25,),
            MyButton(
                text: "Pay now",
                onTap: ()=>userTappedPay(),
            ),
            SizedBox(height: 15,),
        
            //credit card form
          ],
        ),
      ),
    );
  }
}
