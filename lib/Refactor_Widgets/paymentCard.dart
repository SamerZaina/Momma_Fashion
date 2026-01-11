import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214,
      width: double.infinity,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(width: 1 , color: Colors.white)
          ),
          color: const Color(0xFF6C8EF2),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Icon(Icons.credit_card_outlined,
                  size: 31,
                  color: Colors.white,),

                const SizedBox(height: 45,),

                Text(" 1234 5678 9876 5432",
                  style: GoogleFonts.quicksand(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                Text("1234",
                  style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFC7C7C7)
                  ),),

                const SizedBox(height: 22,),

                Row(
                  children: [
                    Text("James Born",
                      style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),),
                    const Spacer(),
                    Text("EXPIRY  ",
                      style: GoogleFonts.quicksand(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFC7C7C7)
                      ),),
                    Text("03/17",
                      style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),),
                  ],
                )

              ],
            ),
          )
      ),
    );
  }
}
