import 'package:flutter/material.dart';


class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
            
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 34, 105, 24),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))
            ),
            child: Row(
              children: [
              const Text('Hi Everyone !', 
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
              ),

              const Spacer(),
              
              Image.asset("assets/images/logo.png")
            ]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            height: 58,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: Color.fromARGB(31, 34, 197, 45).withOpacity(0.2),
                ),
              ]
              ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 12, 152, 24)
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Icon(Icons.search)
              ),
            ),
            )
          )
        ],
      ),
    );
  }
}
