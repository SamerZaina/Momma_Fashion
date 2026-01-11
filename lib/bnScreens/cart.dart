import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Refactor_Widgets/cardItem.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          visible: true,),

          const CardItem(
            imagePath: "Images/backbagwithoutbackground.png",
            itemName: "Backpack",
            itemSource: "from boots category",
            itemPrice: "120",
            visible: true,),

          const CardItem(
            imagePath: "Images/handbagsilver.png",
            itemName: "Backpack",
            itemSource: "from boots category",
            itemPrice: "88",
            visible: true,),


          const SizedBox(height: 35,),

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
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF232323)
                    ),),
                  const Spacer(),
                  Text("\$215",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: const Color(0xFF232323)
                    ),)
                ],
              ),


              const SizedBox(height: 25,),

              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, 'paymentMode_screen');
                },
                child: const Text("Checkout"),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(332, 40),
                textStyle: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w300
                )
              ),),

              const SizedBox(height: 10,),

              ElevatedButton(
                onPressed: (){
          // here the code of dialog

                  showDialog(
                    barrierColor: Colors.black.withOpacity(0.8),
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(

                        backgroundColor: Colors.white,
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 34,top: 34),
                          child: SizedBox(
                            height: 92,
                            width: 92,
                            child: Image.asset('Images/cancleorder.png'),
                          ),
                        ),
                        content: SizedBox(
                          height: 80,
                          width: 236,
                          child: Column(
                            children: [
                              Text("Are you sure you want "
                          "to cancel this order?" ,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.quicksand(
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF23203F)
                              ),)
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(onPressed: (){
                            Navigator.pushReplacementNamed(context, 'bn_screen',
                            arguments: 0);
                          },
                              child: Text("Cancel")),
                          SizedBox(height: 20,),

                          ElevatedButton(

                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  color: Color(0xFFE1E1E7)
                                )
                              )
                              ,onPressed: (){
                            Navigator.of(context).pop();
                              },

                              child: Text("Not Now!",
                              style: GoogleFonts.nunitoSans(
                                color: Color(0xFF9293A3),
                                fontSize: 20,
                                fontWeight: FontWeight.w300
                              ),)

                          ),



                          SizedBox(height: 30,)

                        ],
                      );
                    },
                  );


                },
                child: const Text("Cancle Order"),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(332, 40),
                    textStyle: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,


                    ),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color: Color(0xFFC9D8E7)
                  )
                ),),

            ],
          )

        ],
      ),
    );
  }
}


