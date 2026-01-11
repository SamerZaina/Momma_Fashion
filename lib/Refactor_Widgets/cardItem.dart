import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required String imagePath ,
    required String itemName,
    required String itemSource,
    required String itemPrice,
    bool visible = true
  }):
      _imagePath = imagePath,
  _itemName = itemName,
  _itemSource = itemSource,
  _itemPrice = itemPrice ,
  _visible = visible ;

 final  String _imagePath ;
  final  String _itemName;
  final  String _itemSource;
  final  String _itemPrice;
  final bool _visible ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 107,
        width: double.infinity,
        child: Card(
          elevation: 10,
          shadowColor: Colors.black45,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                  height:87 ,
                  width: 82,
                  child: Image.asset(_imagePath),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_itemName,
                    style: GoogleFonts.quicksand(
                        fontSize: 16,
                        color: const Color(0xFF111111),
                        fontWeight: FontWeight.w300
                    ),),
                  Text(_itemSource,
                    style: GoogleFonts.roboto(
                        color: const Color(0xFFA1A1B4),
                        fontWeight: FontWeight.w400,
                        fontSize:13.333
                    ),),
                  Text("\$$_itemPrice",
                    style: GoogleFonts.quicksand(
                        color: const Color(0xFF111111),
                        fontSize: 15.55,
                        fontWeight: FontWeight.w300
                    ),)
                ],
              ),
              const Spacer(),

              Visibility(
                  visible: _visible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Transform.translate(
                        offset: const Offset(15,-10),
                        child:
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.cancel_outlined,
                              color: Color(0xFF161616),
                              size: 20,)
                        ),

                      ),


                      const Spacer(),

                      Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.black,
                              radius: 12.5,
                              child: const Padding(
                                padding: EdgeInsets.only(bottom:5),
                                child: Icon(Icons.minimize,
                                  size: 10,),
                              )
                          ),

                          const SizedBox(width: 6,),

                          Text("2",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: const Color(0xFF161616)
                            ),) ,

                          const SizedBox(width: 6,),

                          CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child: const Icon(Icons.add,
                              size: 10,),
                            radius: 12.5,
                          )
                        ],
                      ),

                      const SizedBox(height: 20,)
                    ],
                  )),

              const SizedBox(width: 11,)
            ],

          ),
        ),
      ),
    );
  }
}