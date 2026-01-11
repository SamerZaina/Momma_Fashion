import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          leading: IconButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, 'bn_screen' , arguments: 2);
              },
              icon: const Icon(Icons.arrow_back_ios)
          ),
        ),

      body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 37
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
              'Images/Momma Title.png'),

          const SizedBox(height: 18,),

          Text("FASHIONS",style: GoogleFonts.poppins(
              fontSize: 15,
              letterSpacing: 3,
              fontStyle: FontStyle.italic
          ),),

          const Divider(color: Color(0xFFDBDEE3),),

          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("About",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: const Color(0xFF474559)
                ),),

                const SizedBox(height: 12,),
                
                Text("Contrary to popular belief, Lorem Ipsum is ",
                style: GoogleFonts.roboto(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF66647B)
                ),),

                Text("not simply random text. It has roots in a ",
                  style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF66647B)
                  ),),

                Text("piece of classical professor.",
                  style: GoogleFonts.roboto(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF66647B)
                  ),),

              ],
            ),
          ),
          const SizedBox(height: 20,),

          const Divider(color: Color(0xFFDBDEE3),),
          const SizedBox(height: 19,),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 161,
                    height: 162,
                    child: Image.asset('Images/about01.png'),
                  ),

                  SizedBox(
                    width: 161,
                    height: 162,
                    child: Image.asset('Images/about02.png'),
                  ),

                ],
              ),
              const SizedBox(height: 10,),

              SizedBox(
                height: 162,
                width: 365,
                child: Image.asset('Images/about03.png',
                fit: BoxFit.fill,),
              )
            ],
          )
        ],
      ),),
    );
  }
}
