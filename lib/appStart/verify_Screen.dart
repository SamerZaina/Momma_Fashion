import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'signUp_Screen');
            }, icon: const Icon(Icons.arrow_back_ios)),
          )

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           const SizedBox(height: 100,),

           Text("Verify Your Account",
           style: GoogleFonts.quicksand(
             fontSize: 25,
             fontWeight: FontWeight.w300,
             color: const Color(0xFF23203F)
           ),),

           const SizedBox(height: 27),

           Text("We are sending OTP to validate your",
           style: GoogleFonts.roboto(
             fontWeight: FontWeight.w400,
             fontSize: 18,
             color: const Color(0xFF9192AE)
           ),),

           Text("mobile number. Hang on!",
             style: GoogleFonts.roboto(
                 fontWeight: FontWeight.w400,
                 fontSize: 18,
                 color: const Color(0xFF9192AE)
             ),),

           const SizedBox(height: 36,),
           
           
           Card(

             elevation:5,
             shadowColor: Colors.white12,
             color: Colors.transparent,

             child: PinCodeTextField(
                 appContext: context,
                 length: 4,
               enableActiveFill: true,
               cursorColor: const Color(0xFFA8ADB4),
               cursorWidth: 1,
               cursorHeight: 29,

               keyboardType: TextInputType.number,
               textStyle: GoogleFonts.roboto(
                 fontSize: 35,
                 fontWeight: FontWeight.w400,
                 color: Colors.white
               ),
               pinTheme: PinTheme(

                 fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
                 shape: PinCodeFieldShape.box,
                 fieldHeight: 52,
                 fieldWidth: 52,
                activeColor: Colors.white10,
                 activeFillColor: const Color(0xFF6A90F2),
                 inactiveColor: Colors.white10,
                 inactiveFillColor: Colors.white,
                 selectedFillColor: Colors.white,
                 selectedColor: Colors.white10,
                   borderRadius: BorderRadius.circular(8),



               ),
               animationDuration: const Duration(milliseconds: 300),

               onCompleted: (v) {
                 print("Completed: $v");
               },
               onChanged: (value) {
                 print(' on change $value');
               },
             ),
           ),

           const SizedBox(height: 26,),
         

           
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("SMS has been sent to",
                 style: GoogleFonts.roboto(
                     fontWeight: FontWeight.w400,
                     fontSize: 18,
                     color: const Color(0xFF9192AE)
                 ),
               ),
               const SizedBox(width: 10,),
               Text("1800 123 4567",
               style: GoogleFonts.roboto(
                 color: const Color(0xFF23203F),
                 fontWeight: FontWeight.w400,
                 fontSize: 18,
               ),)
             ],
           ),

           const SizedBox(height: 34,),

           
           ElevatedButton(onPressed: (){
             Navigator.pushReplacementNamed(context, 'bn_screen');
           }, child: const Text('submit'))
         ],
        ),
      ),
    );
  }
}
