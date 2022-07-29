import 'package:flutter/material.dart';

class CategoresList extends StatelessWidget {
final String title;
CategoresList(this.title);
  @override
  Widget build(BuildContext context) {
       return Container(
         padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 23),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(title,
             style: const TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 22,

             ),),

             Row(
               children: [
                 const Text('View All',
                   style:  TextStyle(
                     color:Colors.red,
                     fontWeight: FontWeight.bold,
                     fontSize: 18,
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Container(
                   padding: const EdgeInsets.all(6),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color:Colors.red[800],

                   ),
                   child: const Icon(Icons.arrow_forward_ios,
                   color: Colors.white,
                     size: 15,
                   ),
                 )               ],
             )
           ],
         ),
       );
  }
}