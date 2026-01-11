import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion/appStart/launch_screen.dart';
import 'package:momma_fashion/appStart/outBourding_screen.dart';
import 'package:momma_fashion/appStart/signIn_screen.dart';
import 'package:momma_fashion/appStart/signUp_screen.dart';
import 'package:momma_fashion/appStart/verify_Screen.dart';
import 'package:momma_fashion/bnScreens/bn_screen.dart';
import 'package:momma_fashion/bnScreens/chart/paymentMode.dart';
import 'package:momma_fashion/bnScreens/chart/paymentSuccessful.dart';
import 'package:momma_fashion/bnScreens/chart/rateOrder.dart';
import 'package:momma_fashion/bnScreens/home/productDetails.dart';
import 'package:momma_fashion/bnScreens/home/search.dart';
import 'package:momma_fashion/bnScreens/more/about.dart';
import 'package:momma_fashion/bnScreens/more/favorite.dart';
import 'package:momma_fashion/bnScreens/more/order.dart';
import 'package:momma_fashion/bnScreens/more/orderDetails.dart';
import 'package:momma_fashion/bnScreens/more/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

     theme: ThemeData(

       // Text Fieled Theme data

       textSelectionTheme: const TextSelectionThemeData(
         cursorColor: Color(0xFF23203F),

       ),


       inputDecorationTheme: InputDecorationTheme(

         hintStyle: GoogleFonts.roboto(
           fontWeight: FontWeight.w300,
           fontSize: 22,
           color: const Color(0xFF9391A4)
         ),

         suffixIconColor: const Color(0xFFD0D0D0),



         focusedBorder: const UnderlineInputBorder(
           
             borderSide: BorderSide(
                 color: Color(0xFFD0D0D0),

             )
         ),

         enabledBorder: const UnderlineInputBorder(
             borderSide: BorderSide(
                 color: Color(0xFFD0D0D0)
             )

         )
       ),

       scaffoldBackgroundColor: Colors.white,
       appBarTheme: const AppBarTheme(
         backgroundColor: Colors.white,
         actionsIconTheme: IconThemeData(
           size: 16,

         )
       ),

       // Text theme data 

       textTheme: TextTheme(
         
         bodyLarge: const TextStyle(
           fontFamily: 'Nunito',
           fontWeight: FontWeight.bold,
           fontSize: 30,
           color: Colors.black
         ),

         bodySmall:GoogleFonts.openSans(
           fontSize: 17,
           fontWeight: FontWeight.w300,
           color: const Color(0xFF716F87)
         ),

           bodyMedium: GoogleFonts.roboto(
           fontSize: 22,
         fontWeight: FontWeight.w400,
             color: const Color(0xFF23203F)
       )


       ),


       elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
           fixedSize: const Size(315, 53),
           backgroundColor: const Color(0xFF6A90F2),
           textStyle: GoogleFonts.roboto(
             fontSize: 20,
               fontWeight: FontWeight.w500
            
           ),
               foregroundColor: Colors.white

         )
       )


     ),
      
     initialRoute: 'launch_Screen',
      routes: {
        'launch_Screen' : (context) => const LaunchScreen(),
        'outBourding_Screen': (context) => const OutbourdingScreen(),
        'signIn_Screen' : (context) => const SigninScreen(),
        'signUp_Screen' : (context) => const SignupScreen(),
        'verify_Screen' : (context) => const VerifyScreen(),
        'bn_screen' : (context) => BnScreen(),
        'paymentMode_screen' : (context) => const Paymentmode(),
        'paymentsuccessful_screen' : (context) => const Paymentsuccessful(),
        'rateOrder_screen' : (context) => const Rateorder(),
        'profile_screen' : (context) => const Profile(),
        'order_screen' : (context) => const Order(),
        'favorite_screen' : (context) => const Favorite(),
        'orderDetails' : (context) => const Orderdetails(),
        'about_screen' : (context) => const About(),
        'search_screen' : (context) => const Search(),
        'productDetails_screen' : (context) => const Productdetails(),

      }


    );
  }
}

