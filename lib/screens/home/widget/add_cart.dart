import 'package:flutter/material.dart';
import 'package:untitled1/models/clothes.dart';
 class AddCart extends StatelessWidget {
final Clothes clothes;
AddCart(this.clothes);
   @override
   Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.symmetric(vertical: 35),
       padding: const EdgeInsets.all(15),

       child:Row(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text('Price',
             style: TextStyle(
               fontSize: 18,
               color: Colors.grey,
             ),),

             Text(clothes.price,
                 style: const TextStyle(
                   fontSize: 23,
                   height: 1.5,
                   color: Colors.blueGrey,
                   fontWeight: FontWeight.bold
                 ),
             ),

           ],
       ),
       const SizedBox(width: 20,),

       Expanded(
         child: Container(
           height:75 ,
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
               ),
               elevation: 0,
               primary: Colors.red[800],
             ),
             onPressed: (){} , child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const [
               Text('Add To Card',style: TextStyle(
                 fontSize: 25,
               ),),
               SizedBox(width:15 ,),
               Icon(Icons.shopping_cart_outlined),
             ],
           ),
               ),
         ),
       )
         ],
       ) ,
     );
   }
 }
 