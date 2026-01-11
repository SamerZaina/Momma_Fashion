import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right:50),
          child: Align(
              alignment: Alignment.center,
              child: Text("Search",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                    color: const Color(0xFF474559)
                ),
              )),
        ),

        leading: IconButton(icon:
        const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pushReplacementNamed(context, 'bn_screen'
                ,arguments: 0) ;
          },),
      ),

      body: ListView(
        physics:const ScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              style: GoogleFonts.quicksand(
                fontSize: 12
              ),
              decoration: InputDecoration(
                hintText: 'Product Name…' ,
                hintStyle: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xFF9E9DB0),

                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFD0D0D0)
                    )
                ),

                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFFD0D0D0)
                    )
                )
              ),
            ),
          ),

          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
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
        ],
      ),
    );
  }
}
