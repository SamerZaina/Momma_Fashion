import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3) , (){
      Navigator.pushReplacementNamed(context, 'outBourding_Screen');
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(-40, -40),
            child: Transform.scale(
              scale: 1.3,
              child:
                Image.asset("Images/launchscreen background.png",
                fit:BoxFit.cover
                  ,)


            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 600),
              child: Image.asset(
                'Images/Momma Title.png'),
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: Text("FASHIONS",style: GoogleFonts.poppins(
                fontSize: 15,
                letterSpacing: 3,
                fontStyle: FontStyle.italic
              ),)
            ),
          ),

        ],
      ),
    );
  }
}
