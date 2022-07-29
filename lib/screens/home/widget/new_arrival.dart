import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';
import 'package:untitled1/screens/home/widget/clothes_item.dart';

import 'categoris_list.dart';

class Newarrival extends StatelessWidget {
final clothesList=Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
       return Container(
          child: Column(
            children: [
              CategoresList('New Arrival'),
              Container(
            height: 280,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 25,),
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>ClothesItem(clothesList[index]),
                    separatorBuilder: (_,index) =>const SizedBox(width: 10,),
                    itemCount: clothesList.length),
              )
            ],
          ),
       );
  }
}