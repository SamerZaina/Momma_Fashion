import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            CircleAvatar(
              child: Image.asset("Images/profileimage.png",
              ),
              radius: 67.5,
            ),
            const SizedBox(height: 23.4,),

            Text("John Deo",
              style: GoogleFonts.quicksand(
                  fontSize: 19.8,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF444657)
              ),),

            const SizedBox(height: 5.5,),

            Text("johndeo@yourmail.com",
              style: GoogleFonts.quicksand(
                  fontSize: 19.8,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF87879D)
              ),),

            const SizedBox(height: 34,),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("Orders Count",
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF444557)
                        ),),
                        const SizedBox(height: 1,),
                        Text("13",
                          style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF9E9DB0)
                          ),)
                      ],
                    ),
                    
                    const VerticalDivider(

                      color:Color(0xFFD0D0D0),
                    thickness: 1,
                    ),

                    Column(
                      children: [
                        Text("Total Paid",
                        style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF444557)
                        ),),
                        const SizedBox(height: 1,),
                        Text("2342.55 \$",

                            style: GoogleFonts.quicksand(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF9E9DB0)
    ),)
                      ],
                    ),
                  ],
                ),

                const Divider(thickness: 1,color: Color(0xFFD0D0D0),)
              ],
            ),

            const SizedBox(height: 34,),

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
            const SizedBox(height: 44,),
            
            ElevatedButton(onPressed: (){}, child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
