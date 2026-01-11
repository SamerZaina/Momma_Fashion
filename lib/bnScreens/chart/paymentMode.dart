import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Refactor_Widgets/paymentCard.dart';

class Paymentmode extends StatelessWidget {
  const Paymentmode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right:50),
          child: Align(
            alignment: Alignment.center,
              child: Text("Payment mode",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: const Color(0xFF474559)
              ),
              )),
        ),
        
        leading: IconButton(icon:
          const Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pushReplacementNamed(context, 'bn_screen'
              ,arguments: 1) ;
        },),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [

            const PaymentCard() ,
            const SizedBox(height: 52,),

            TextField(
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color(0xFF474559)
              ),
              decoration: const InputDecoration(
                hintText: "Card Number",
                  prefix: Text("     ")
              ),
            ),
            const SizedBox(height: 20,),

            TextField(
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color(0xFF474559)
              ),
              decoration: const InputDecoration(
                  hintText: "MM/YY",
                prefix: Text("     ")
              ),
            ),
            const SizedBox(height: 20,),

            TextField(
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color(0xFF474559)
              ),
              decoration: const InputDecoration(
                  hintText: "CCV",
                  prefix: Text("     ")
              ),
            ),
            const SizedBox(height: 42,),
            
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'paymentsuccessful_screen');
            }, child: const Text("Proceed"))

            


          ],
        ),
      ),
    );
  }
}

