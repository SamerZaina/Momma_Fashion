import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileListTile extends StatelessWidget {
   ProfileListTile({
    super.key,
    required IconData leadingIcon,
    required String title ,
     bool visible = false


  }): _iconName = leadingIcon ,
   _title = title,
   _visible = visible

  ;

  final IconData _iconName ;
  final String _title ;
   final bool _visible  ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _visible,
          child:  const Divider(color: Color(0xFFDEE8F2),),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20,right: 15),
            child: Icon(_iconName,
              color: const Color(0xFF87879D),
              size: 18,),
          ),

          title: Text(_title,
            style: GoogleFonts.quicksand(
                color: const Color(0xFF87879D),
                fontWeight: FontWeight.w500,
                fontSize: 18
            ),),
        ),
        const Divider(color: Color(0xFFDEE8F2),),
      ],
    );
  }
}