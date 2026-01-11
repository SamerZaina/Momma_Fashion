import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion/Refactor_Widgets/cardItem.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Align(
                alignment: Alignment.center,
                child: Text("Orders History",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                      color: const Color(0xFF474559)
                  ),)),
          ),
          leading: IconButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, 'bn_screen' , arguments: 2);
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
            Text("3 Orders",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              color: const Color(0xFF111111)
            ),),

            const SizedBox(height: 12,),

            InkWell(
              onTap: (){
                  Navigator.pushReplacementNamed(context, 'orderDetails');
              },
              child: const CardItem(
                imagePath: "Images/handbagblack withoutbackgroung.png",
                itemName: "HandBag",
                itemSource: "from boots category",
                itemPrice: "100",
                visible: false,
                ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, 'orderDetails');
              },
              child: const CardItem(
                imagePath: "Images/backbagwithoutbackground.png",
                itemName: "Backpack",
                itemSource: "from boots category",
                itemPrice: "120",
                visible: false,

                ),
            ),

            InkWell(
              onTap: (){
                  Navigator.pushReplacementNamed(context, 'orderDetails');
              },
              child: const CardItem(
                imagePath: "Images/handbagsilver.png",
                itemName: "Backpack",
                itemSource: "from boots category",
                itemPrice: "88",
                visible: false,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
