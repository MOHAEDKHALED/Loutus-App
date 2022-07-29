import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';
import 'package:untitled1/screens/home/widget/best_sell.dart';
import 'package:untitled1/screens/home/widget/clothes_info.dart';
import 'package:untitled1/screens/home/widget/custome_app_bar.dart';
import 'package:untitled1/screens/home/widget/new_arrival.dart';
import 'package:untitled1/screens/home/widget/search_input.dart';

class HomePage extends StatelessWidget {
   final bottomList={'home' , 'menu', 'heart','user'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomeAppBar(),
            SearchInput(),
            Newarrival(),
            BestSell(),

          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: bottomList.map((e) => BottomNavigationBarItem(
            icon: Image.asset('assets/icons/$e.png',
            width: 30,),

          label: e,
        )).toList(),
     showSelectedLabels:false ,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ) ,
    );
  }
}
