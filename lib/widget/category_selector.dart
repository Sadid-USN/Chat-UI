import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categries = ['Massage', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categries.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  categries[index],
                  style: TextStyle(
                      fontSize: 24.0,
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
              ),
            );
          }),
    );
  }
}
