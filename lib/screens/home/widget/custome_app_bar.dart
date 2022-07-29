import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:45,
     left: 25,
     right:25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hay, What Are You \n Looking For? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:26,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    TextSpan(
                      text: '👀',
                      style: TextStyle(
                          fontSize:26,
                          fontWeight: FontWeight.bold,
                        )
                    )
                  ]
              ))
            ],
          ),
          Stack(children: [
            Container(

              padding:const EdgeInsets.all(10) ,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.1,
                      offset: const Offset(0,1),
                    )
                ]
              ),
              child: const Icon(Icons.shopping_cart_outlined,
              color:Colors.grey,
              ),
            ),
               Positioned(
                   right: 10,
                   top: 10,
                   child: Container(
                 width: 10,
                 height: 10,
                 decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
                   shape: BoxShape.circle,
                 ),
               ))
          ],)
        ],

      ),
    );
  }
}
