import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right:50),
          child: Align(
              alignment: Alignment.center,
              child: Text("Product Details",
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(height: 50,),
                Stack(
                  children: [
                    SizedBox(
                      height: 232,
                      width: double.infinity,
                      child:  Image.asset('Images/handbagblack withoutbackgroung.png'),
                    )
                   ,
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: Align(
                          alignment: Alignment.topRight,
                          child:Card(
                            shape: const CircleBorder(
                                side: BorderSide(
                                    color: Colors.transparent
                                )
                            ),
                            elevation: 10,
                            shadowColor: Colors.black45,
                            color: Colors.transparent,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset('Images/redhart.png') ,
                            ),
                          )
                      ),
                    )
                  ],
                ),

                Row(

                  children: [
                    Text("Handbag",
                      style: GoogleFonts.quicksand(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF232323)
                      ),),
                    const Spacer(),
                    Text("\$125",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          color: const Color(0xFF232323)
                      ),)
                  ],
                ),
                
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Bags",
                    style: GoogleFonts.roboto(
                      fontSize: 16.66,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF87879D)
                    ),)),

                const SizedBox(height: 22,),

                const Divider(thickness: 1,
                color: Color(0xFFE8E8E8),)

              ],
            ),

            Card(
              color: Colors.white,
              elevation: 5,
              child:Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Lorem Ipsum is simply dummy text of the printing and "
                    "typesetting industry. Lorem Ipsum has been the"
                    "industry’s standard dummy text ever since the 1500s,"
                    "when an unknown printer took a galley of type and"
                    "scrambled it to make a type specimen book."
                    "Lorem Ipsum is simply dummy text of the printing "
                    "and"
                    "typesetting industry. Lorem Ipsum has been the"
                    "industry’s standard dummy text ever since the 1500s,"
                    "when an unknown printer took a galley of type and"
                    "scrambled it to make a type specimen book.",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color(0xFF9393A7),

                ),),
              )
            ),
            const SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 40)
              ),
                onPressed: (){},
                child: Text("ADD TO CART",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300
                ),))

        ],),
      ),
    );
  }
}
