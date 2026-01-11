import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma_fashion/Models/bnTitleAndBody.dart';
import 'package:momma_fashion/bnScreens/cart.dart';
import 'package:momma_fashion/bnScreens/home.dart';
import 'package:momma_fashion/bnScreens/more.dart';

class BnScreen extends StatefulWidget {
   BnScreen({super.key});

  @override
  State<BnScreen> createState() => _BnScreenState();
}

class _BnScreenState extends State<BnScreen> {

  int _currentPage = 0 ;
  int _count = 1 ;
  final List<BnTitleAndBody> _BnTAndB  = <BnTitleAndBody>[
    BnTitleAndBody('Home', const Home()),
    BnTitleAndBody('Cart', const Cart()),
    BnTitleAndBody('More', const More()),
  ];

  @override
  Widget build(BuildContext context) {
     int? args = ModalRoute.of(context)!.settings.arguments as int?;


    if(args != null && _count != 0){
      setState(() {
        _currentPage = args! ;
        args = null ;
        _count--;

      });
    }

    return Scaffold(


      appBar: AppBar(
        actions: [
          Visibility(
            visible: _currentPage == 0,
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, 'search_screen');
                    },
                    icon: const Icon(Icons.search,
                    size: 25,
                    color: Color(0xFF474459),)
                ),
              ))
        ],
        title: Align(
          alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text(_BnTAndB[_currentPage].title,
              style: GoogleFonts.quicksand(
                color: const Color(0xFF474559),
                fontWeight: FontWeight.w300,
                fontSize:25
              ),),
            )
        ),
      ),

      body: _BnTAndB[_currentPage].body,



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        backgroundColor: Colors.white10,
        elevation: 0,
        selectedItemColor: const Color(0xFF6C8EF2),
        unselectedItemColor: const Color(0xFF9E9DB0),
        selectedIconTheme: const IconThemeData(
          size: 28
        ),
        unselectedIconTheme: const IconThemeData(
          size: 24
        ),

        onTap: (page) {
          setState(() {
            _currentPage = page ;

          });
        },

        items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: 'Home'),

          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
          label: 'Cart'),

          const BottomNavigationBarItem(
              icon: Icon(Icons.more_vert),
              label: 'More')
      ],

      ),
    );
  }
}
