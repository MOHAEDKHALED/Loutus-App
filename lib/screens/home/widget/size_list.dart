import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SizedList extends StatefulWidget {
  @override
  State<SizedList> createState() => _SizedListState();
}

class _SizedListState extends State<SizedList> {
  final List<String> sizeList = ['S', 'M', 'L', 'XL', 'XXL', '3XL'];
  var currentSelected = 0;

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),

      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: currentSelected == index
                          ? Theme.of(context).accentColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.9),
                        width: 2,
                      )),
                  child: Text(
                    sizeList[index],
                    style: TextStyle(
                      color: currentSelected == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 9,
              ),
          itemCount: sizeList.length),

    );

  }

}
