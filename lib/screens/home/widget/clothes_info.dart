import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';

class ClothesInfo  extends StatelessWidget {
final Clothes clothes;
ClothesInfo(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical:10 ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            children: [
              Text('${clothes.title }, ${clothes.subtitle }',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              Container(
                padding: const EdgeInsets.all(6),
                decoration:BoxDecoration(
                  color: Colors.grey.withOpacity(0.2 ),
                  shape: BoxShape.circle,
                ) ,
                child: const Icon(Icons.favorite,
                  color: Colors.red,
                  size: 22,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:5 ,bottom:10),
            child: Row(
              children: const [
                Icon(Icons.star_border,
                color:Colors.red ,),
                Text('4.7(2.8k)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),)
              ],
            ),
          ),
          RichText(text:  TextSpan(
            children: [
              TextSpan(
                text: 'Gucci Oversize, a hoddle with the style of Gucci\n needs of solt silk fabric and made with oversized \n model according to today\'s times ',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  height: 1.5,
                )

              ),
              TextSpan(
                text: 'Read More',
                style: TextStyle(
                  color: Colors.red,
                )
              ),
            ]
          )),
        ],
      ),
    );
  }
}
