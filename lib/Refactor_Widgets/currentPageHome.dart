import 'package:flutter/material.dart';

class Currentpagehome extends StatelessWidget {
  const Currentpagehome({
    super.key,
    required currentPage

  }) :
        _currentPage = currentPage;

  final int _currentPage ;






  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),

          height: 9,
          width: 9,
          decoration: BoxDecoration(
              color:  _currentPage == 0 ?  const Color(0xFF474459) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 5),
          height: 9,
          width: 9,
          decoration: BoxDecoration(
              color:   _currentPage == 1 ?  const Color(0xFF474459) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),
        Container(
          height: 9,
          width: 9,
          decoration: BoxDecoration(
              color: _currentPage == 2 ?  const Color(0xFF474459) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),


      ],
    );
  }
}
