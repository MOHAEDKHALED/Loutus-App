import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagList = {"Suit ", "T-Shirt", "Trouser"};

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search Aesthetic Shirt",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        child: const Icon(Icons.search)),
                    //width: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.menu,
                ),
                width: 60,
                height: 60,
              )
            ],
          ),
          Row(
           children:
             tagList.map((e) => Container(
               padding: const EdgeInsets.all(10),
            margin:const EdgeInsets.all(10) ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                  color: Colors.red[800],
            ),
               child: Text(e,
                 style: const TextStyle(
                   color: Colors.white
                 ),
               ),

             )).toList()

          ),
        ],
      ),
    );
  }
}
