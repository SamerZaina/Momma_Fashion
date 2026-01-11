import 'package:flutter/material.dart';

class CurrentPage extends StatelessWidget {
  const CurrentPage({
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
          margin: const EdgeInsets.only(right: 13.4),

          height: 4,
          width: 17.8,
          decoration: BoxDecoration(
              color:  _currentPage == 0 ?  const Color(0xFF6A90F2) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 13.4),
          height: 4,
          width: 17.8,
          decoration: BoxDecoration(
              color:   _currentPage == 1 ?  const Color(0xFF6A90F2) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),
        Container(
          height: 4,
          width: 17.8,
          decoration: BoxDecoration(
              color: _currentPage == 2 ?  const Color(0xFF6A90F2) : const Color(0xFFDDDDDD) ,
              borderRadius: BorderRadius.circular(9)
          ),
        ),


      ],
    );
  }
}
