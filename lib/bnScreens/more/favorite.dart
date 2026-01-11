import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Align(
            alignment: Alignment.center,
              child: Text("Favorites",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w300,
                fontSize: 25,
                color: const Color(0xFF474559)
              ),)),
        ),
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, 'bn_screen' , arguments: 2);
            },
            icon: const Icon(Icons.arrow_back_ios)
        ),
      ),

      body: GridView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(
          top: 10
        ),
        itemBuilder: (context,num){
          return Column(
            children: [
              SizedBox(
                height: 132,
                width: 132,
                child: Stack(
                  children: [
                    Image.asset("Images/handbaggridview.png"),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("Images/redhart.png",) ,
                    )


                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text("Hand bags",
              style: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF474559)
          ),),

              const SizedBox(height: 8,),
              Text("\$10.00",
              style: GoogleFonts.roboto(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF9E9DB0)
          ),),

              
            ],
          );
        },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
     )
    );
  }
}
