import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    body: Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              Text("Sign In" , style: Theme.of(context).textTheme.bodyLarge,),
              const SizedBox(height: 9,),
              Text("Login to start using app," , style: GoogleFonts.roboto(
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: const Color(0xFF716F87)
              ),),
              const SizedBox(height: 36,),

              TextField(
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: const InputDecoration(
                  hintText: 'Email',



                ),

              ),
              const SizedBox(height: 28,),
              TextField(
                obscureText: true,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility,)
                ),

              )
      
            ],
          ),
          const SizedBox(height: 25,),
      
          Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context, 'bn_screen');
              }, child: const Text('Login')),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: const Color(0xFF9391A4)
                  ),),

                  TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'signUp_Screen');
                      },
                      child: Text("Sign up",
                        style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: const Color(0xFF23203F)
                      ),),
                  )
                ],
              )
      
            ],
          )
        ],
      ),
    ),

    );
  }
}
