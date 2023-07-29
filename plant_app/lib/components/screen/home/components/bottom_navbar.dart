import 'package:flutter/material.dart';

class MyBottomNavbar extends StatelessWidget {
  MyBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            offset: Offset(0, -10),
            color: Colors.black.withOpacity(0.2)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.filter_vintage,
          color: Color.fromARGB(255, 3, 127, 7)) 
          ),
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.heart_broken,
          color: Color.fromARGB(255, 3, 127, 7)) 
          ),
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.person,
          color: Color.fromARGB(255, 3, 127, 7)) 
          )
      ]),
    );
  }
}
