import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion/Refactor_Widgets/currentPageHome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemNum = 2 ;
  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,
      children: [
        const SizedBox(height: 15,),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              InkWell(
                onTap:(){
                 setState(() {
                   _selectedItemNum = 0 ;
                 });
                  },
                child: Text("   Kinsa     ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: _selectedItemNum == 0 ? const Color(0xFF474559) :  const Color(0xFF9E9DB0),
                      fontWeight: FontWeight.w300
                  ),),
              ),

              InkWell(
                onTap:(){
                  setState(() {
                    _selectedItemNum = 1 ;
                  });
                },

                child: Text("Womens    ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: _selectedItemNum == 1 ? const Color(0xFF474559) :  const Color(0xFF9E9DB0),
                      fontWeight: FontWeight.w300
                  ),),
              ),

              InkWell(
                onTap:(){
                  setState(() {
                    _selectedItemNum = 2 ;
                  });
                },
                child: Text("Handbags    ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: _selectedItemNum == 2 ? const Color(0xFF474559) :  const Color(0xFF9E9DB0),
                      fontWeight: FontWeight.w300
                  ),),
              ),

              InkWell(
                onTap:(){
                  setState(() {
                    _selectedItemNum = 3 ;
                  });
                },
                child: Text("Boots     ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color:_selectedItemNum == 3 ? const Color(0xFF474559) :  const Color(0xFF9E9DB0),
                      fontWeight: FontWeight.w300
                  ),),
              ),

              InkWell(
                onTap:(){
                  setState(() {
                    _selectedItemNum = 4 ;
                  });
                },
                child: Text("Mens    ",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color:_selectedItemNum == 4 ? const Color(0xFF474559) :  const Color(0xFF9E9DB0),
                      fontWeight: FontWeight.w300
                  ),),
              ),


            ],
          ),
        ),

        const Divider(thickness: 3,
            color: Color(0xFF6A90F2),
        endIndent: 160,
        indent: 160,),

        const SizedBox(height: 26,),



        SizedBox(height: 198,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                color: const Color(0xFFF0F1F6),
                child: SizedBox(
                  height: 198,
                    width: 270,
                    child: Image.asset("Images/handbagblack withoutbackgroung.png")),
              ),
            ),

            Card(
              color: const Color(0xFFF0F1F6),
              child: SizedBox(
                  height: 198,
                  width: 270,
                  child:Image.asset("Images/handbagsilver.png") ),
            )

            ,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                color: const Color(0xFFF0F1F6),
                child: SizedBox(
                    height: 198,
                    width: 270,
                    child: Image.asset("Images/handbagblack withoutbackgroung.png")),
              ),
            ),
          ],
        ),),
        const SizedBox(height: 24,),

        const Currentpagehome(currentPage: 1),

        const SizedBox(height: 20,),

        SizedBox(
          height: 460,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            padding: const EdgeInsets.only(
                top: 10
            ),
            itemBuilder: (context,num){
              return InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, 'productDetails_screen');
                },
                child: Column(

                  children: [
                    SizedBox(
                      height: 111,
                      width: 132,
                      child: Stack(
                        children: [
                          Image.asset("Images/handbaggridview.png"),
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset("Images/greyhart.png",) ,
                          )


                        ],
                      ),
                    ),
                    const SizedBox(height: 23,),
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
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
          ) ,
        ),
        SizedBox(height: 20,)

      ],
    );
  }
}
