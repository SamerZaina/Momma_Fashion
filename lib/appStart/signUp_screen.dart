import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, 'signIn_Screen');
          }, icon: const Icon(Icons.arrow_back_ios)),
        )
        
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(

          children: [
            Text("Sign Up",
            style: Theme.of(context).textTheme.bodyLarge
              ,),
            const SizedBox(height: 8,),
            Text("Create an account",
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color:const Color(0xFF9391A4)
            ),),
            const SizedBox(height: 45,),
        
            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'First Name',

              ),
            ),
            const SizedBox(height: 13,),

            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'Last Name',

              ),
            ),
            const SizedBox(height: 13,),

            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'Email',

              ),
            ),
            const SizedBox(height: 13,),


            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: const InputDecoration(
                hintText: 'Phone',

              ),
            ),
            const SizedBox(height: 13,),


            TextField(
              style: Theme.of(context).textTheme.bodyMedium,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility),

              ),
            ),
            const SizedBox(height: 35,),
            
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, 'verify_Screen');
            }, child: const Text("Sign Up"))


        
        
          ],
        ),
      ),
    );
  }
}
