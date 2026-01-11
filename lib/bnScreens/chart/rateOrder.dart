import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Rateorder extends StatelessWidget {
  const Rateorder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("How was your order",
                style: GoogleFonts.quicksand(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF171717)
                ),),

              Text("experiences from it Momma?",
                  style: GoogleFonts.quicksand(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF171717)
                  )),
              const SizedBox(height: 33,),

              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                unratedColor: Colors.grey.shade300,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Color(0xFF6A90F2),
                  size: 22,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),

              const SizedBox(height: 37,),

              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context,
                      'bn_screen');
                },
                child: Text("SUBMIT",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w500

                  ),),
              ),
              const SizedBox(height: 22.8,),
              
              TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context,
                        'bn_screen');
                  },
                  child: Text("Not now!",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9A98A8),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xFF9A98A8)
                  ),)
              )

            ],
          ),
        )
    );
  }
}
