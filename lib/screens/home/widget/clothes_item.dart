import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';
import 'package:untitled1/models/detail/detail.dart';

class ClothesItem extends StatelessWidget {
final Clothes clothes;
const ClothesItem(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
   child:  GestureDetector(
     onTap: (){
       Navigator.of(context).push(
         MaterialPageRoute(
           builder: (context) => DetailPage(clothes)
         )
       );
     },
     child: Card(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
  ),
       child: Column(
         crossAxisAlignment:CrossAxisAlignment.center ,
         children: [
           Stack(
             children: [
               Container(
                 margin: const EdgeInsets.all(8),
                 height: 170,
                 width: 210,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   image: DecorationImage(
                     image: AssetImage(clothes.imageUrl),
                     fit: BoxFit.scaleDown,

                   )
                 ),
               ),
               Positioned(
                   right: 5,
                   top: 15,

                   child: Container(
                     padding: const EdgeInsets.all(6),
                     decoration:BoxDecoration(
                       color: Colors.white.withOpacity(0.9 ),
                       shape: BoxShape.circle,
                     ) ,
                     child: const Icon(Icons.favorite,
                     color: Colors.red,
                       size: 26,
                     ),
                   ),
               )
             ],
           ),
          Text(clothes.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),),
          Text(clothes.subtitle,
            style:  const TextStyle(
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),),
          Text(clothes.price,
              style:  const TextStyle(
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Colors.red,
              )
          ),
         ],
       ),
     ),
   ),
    );
  }
}