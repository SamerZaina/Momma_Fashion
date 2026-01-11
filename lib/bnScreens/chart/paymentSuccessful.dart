import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paymentsuccessful extends StatelessWidget {
  const Paymentsuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Images/paymentSuccessful.png"),
            const SizedBox(height: 20,),
            Text("Payment Successful!",
            style: GoogleFonts.quicksand(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF111111)
            ),),
            const SizedBox(height: 18,),
            Text("We have emailed you the receipt.",
                style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF8F8FA6)
                )),
            const SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, 'rateOrder_screen');
                },
                child: Text("Finish!",
                  style: GoogleFonts.quicksand(
                    fontSize: 18.8,
                    fontWeight: FontWeight.w300

                ),),
            )

          ],
        ),
      )
    );
  }
}
