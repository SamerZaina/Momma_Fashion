import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Refactor_Widgets/profileListTile.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,



      children: [
        CircleAvatar(
          child: Image.asset("Images/profileimage.png",
          ),
          radius: 67.5,
        ),
        const SizedBox(height: 23.4,),

        Text("John Deo",
        textAlign: TextAlign.center,
        style: GoogleFonts.quicksand(
          fontSize: 19.8,
          fontWeight: FontWeight.w300,
          color: const Color(0xFF444657)
        ),),

        const SizedBox(height: 5.5,),

        Text("johndeo@yourmail.com",
          textAlign: TextAlign.center,
          style: GoogleFonts.quicksand(
              fontSize: 19.8,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF87879D)
          ),),

        const SizedBox(height: 78.5,),



        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'profile_screen');
          },
          child: ProfileListTile(
            visible: true,
            leadingIcon: Icons.person,
            title: 'My Profile',
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'favorite_screen');
          },
          child: ProfileListTile(
            leadingIcon: Icons.favorite,
            title: 'Favorites',
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'order_screen');
          },
          child: ProfileListTile(
            leadingIcon: Icons.list_alt,
            title: 'Orders',
          ),
        ),

        InkWell(
          onTap: (){
          //  Navigator.pushReplacementNamed(context, '');
          },
          child: ProfileListTile(
            leadingIcon: Icons.verified_user_outlined,
            title: 'Terms & Conditions',
          ),
        ),

        InkWell(
          onTap: (){
           // Navigator.pushReplacementNamed(context, '');
          },
          child: ProfileListTile(

            leadingIcon: Icons.policy,
            title: 'Privacy Policy',
          ),
        ),



        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'about_screen');
          },
          child: ProfileListTile(
            leadingIcon: Icons.accessibility,
            title: 'About',
          ),
        ),

        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'signIn_Screen');
          },
          child: ProfileListTile(

            leadingIcon: Icons.input,
            title: 'Logout',
          ),
        ),


      ],

    );
  }
}


