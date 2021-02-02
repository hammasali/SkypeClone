import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategorySelecter extends StatefulWidget {
  @override
  _CategorySelecterState createState() => _CategorySelecterState();
}

class _CategorySelecterState extends State<CategorySelecter> {
  int selectedIndex = 0;
  List<String> category = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 25.0),
              child: Text(
                category[index],
                style: TextStyle(
                  fontSize: 20.0,
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
