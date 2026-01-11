import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion/Refactor_Widgets/cardItem.dart';

class Orderdetails extends StatelessWidget {
  const Orderdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Align(
              alignment: Alignment.center,
              child: Text("Order Details",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                    color: const Color(0xFF474559)
                ),)),
        ),
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, 'order_screen' );
            },
            icon: const Icon(Icons.arrow_back_ios)
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28,),
            Text("3 items available",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: const Color(0xFF111111)
              ),),

            const SizedBox(height: 12,),

            const CardItem(
              imagePath: "Images/handbagblack withoutbackgroung.png",
              itemName: "HandBag",
              itemSource: "from boots category",
              itemPrice: "100",
              visible: false,
            ),

            const CardItem(
              imagePath: "Images/backbagwithoutbackground.png",
              itemName: "Backpack",
              itemSource: "from boots category",
              itemPrice: "120",
              visible: false,

            ),

            const CardItem(
              imagePath: "Images/handbagsilver.png",
              itemName: "Backpack",
              itemSource: "from boots category",
              itemPrice: "88",
              visible: false,
            ),

            const CardItem(
              imagePath: "Images/handbagsilver.png",
              itemName: "Backpack",
              itemSource: "from boots category",
              itemPrice: "88",
              visible: false,
            ),

            const SizedBox(height: 50,),

            Column(
              children: [
                Row(
                  children: [
                    Text("Sub total:",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA1A1B4)
                      ),),
                    const Spacer(),
                    Text("\$100",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: const Color(0xFF232323)
                      ),)
                  ],
                ),

                const SizedBox(height: 13,),

                Row(
                  children: [
                    Text("Tax(15%):",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF87879D)
                      ),),
                    const Spacer(),
                    Text("\$15",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: const Color(0xFF232323)
                      ),)
                  ],
                ),

                const SizedBox(height: 10,),
                const Divider(
                    thickness: 1,
                    color: Color(0xFFECECEC),
                    endIndent: 1,
                    indent: 1),

                const SizedBox(height: 15,),


                Row(
                  children: [
                    Text("Total:",
                      style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFA1A1B4)
                      ),),
                    const Spacer(),
                    ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 50)
                        ),
                        child: Text("\$215",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        
                      ),))
                  ],
                ),




              ],
            )
          ],
        ),
      ),
    );
  }
}
