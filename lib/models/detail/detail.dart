import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';
import 'package:untitled1/screens/home/widget/add_cart.dart';
import 'package:untitled1/screens/home/widget/clothes_info.dart';
import 'package:untitled1/screens/home/widget/detail_app_bar.dart';
import 'package:untitled1/screens/home/widget/size_list.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
             children:  [
              DetailAppBar(clothes),
               ClothesInfo(clothes),
               SizedList(),
               AddCart(clothes),
                 ],
        ),
      ),
    );
  }
}