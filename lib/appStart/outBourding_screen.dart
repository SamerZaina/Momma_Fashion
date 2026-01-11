import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Refactor_Widgets/currentPage.dart';







class OutbourdingScreen extends StatefulWidget {
  const OutbourdingScreen({super.key});

  @override
  State<OutbourdingScreen> createState() => _OutbourdingScreenState();
}

class _OutbourdingScreenState extends State<OutbourdingScreen> {
  int _currentPage = 0 ;
  final PageController _pageController  = PageController(initialPage: 0);


 @override
  void dispose() {
    // TODO: implement dispose
   _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          Visibility(
            visible: _currentPage != 2,
            maintainState: true,
            maintainSize: true,
            maintainAnimation: true,
            child: TextButton(

                onPressed: (){
                  _pageController.jumpToPage(2);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text("SKIP",
                  style: GoogleFonts.quicksand(
                    color: const Color(0xFF6A90F2),
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  ),),
                )
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        const SizedBox(height: 80,),
          SizedBox(
            height: 500,
            width: double.infinity,

            // Here is the code of page view of our projects
            child: PageView(
              controller: _pageController,
              onPageChanged: (page){
                setState(() {
                  _currentPage = page ;
                });
              },

              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    SizedBox(height: 300,
                        child: Image.asset('Images/outboarding01.png',fit: BoxFit.cover,),),
                    const SizedBox(height: 35,),
                    Text("Welcome!",style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 23,),
                    Text("Now were up in the big leagues gettingour",style: Theme.of(context).textTheme.bodySmall,),
                    Text("turn at bat. The Brady Bunch that's the way ",style: Theme.of(context).textTheme.bodySmall,),
                    Text("we  Brady Bunch..",style: Theme.of(context).textTheme.bodySmall,),

                  ],
                ),

                Column(
                  children: [
                   SizedBox(height: 300,

                   child:  Image.asset('Images/outborading02.png',fit: BoxFit.cover,),),
                    const SizedBox(height: 35,),
                    Text("Add to cart",style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 23,),
                    Text("Now were up in the big leagues gettingour",style: Theme.of(context).textTheme.bodySmall,),
                    Text("turn at bat. The Brady Bunch that's the way ",style: Theme.of(context).textTheme.bodySmall,),
                    Text("we  Brady Bunch..",style: Theme.of(context).textTheme.bodySmall,),

                  ],
                ),

                Column(
                  children: [
                    SizedBox(height: 300,
                        child:Image.asset('Images/outborading03.png',fit: BoxFit.cover,)),
                    const SizedBox(height: 35,),
                    Text("Enjoy Purchase!",style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 23,),
                    Text("Now were up in the big leagues gettingour",style: Theme.of(context).textTheme.bodySmall,),
                    Text("turn at bat. The Brady Bunch that's the way ",style: Theme.of(context).textTheme.bodySmall,),
                    Text("we  Brady Bunch..",style: Theme.of(context).textTheme.bodySmall,),



                  ],
                ),





              ],
            ),
          ),
          const SizedBox(height: 50,),

          CurrentPage(currentPage: _currentPage,),
          const SizedBox(height: 40,),





          Visibility(
              visible: _currentPage == 2 ,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context, 'signIn_Screen');
              }, child: const Text("START"))),
          const Spacer()


        ],
      ),

    );
  }
}




