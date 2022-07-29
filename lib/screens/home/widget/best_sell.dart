import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categoris_list.dart';

class BestSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoresList("Best of Sales"),
          Card(
            margin:const EdgeInsets.symmetric(horizontal: 20,) ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 16,),

                    ClipRRect(

                      borderRadius: BorderRadius.circular(5),

                      child: Image.asset(

                        "assets/images/best1.png",
                        width:100,
                       height: 140,
                       // height: 150,
                      ),
                    ),
                   const SizedBox(width: 20,),
                   Column(
                       children: const [
                         Text('Formal Blue Shirt',
                         style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                           height: 1.9,
                         ),),
                         Text('Shirt',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 15,

                             height: 1.5,
                           ),),
                         Text('\$49.99',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 16,
                             height: 1.5,
                             color: Colors.red,
                           ),),


                       ],
                   ),
                  ],
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 28,
                      ),
                    )),
              ],
            ),

          ),


        ],
      ),
    );
  }
}
