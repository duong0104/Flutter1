import 'package:flutter/material.dart';

class TitleWithBtn extends StatelessWidget {
  TitleWithBtn({
    super.key, required this.title, required this.press,
  });

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          TitleCustom(
            text: title,
            press: (){},
          ),
          const Spacer(),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.red),
                          )
                        )
                      ),
              onPressed: (){
                press();
              },
              child: const Text('More')
          )
        ],
      ),
    );
  }
}

class TitleCustom extends StatelessWidget {
  const TitleCustom({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   left: 0,
          //   child: Container(
          //     margin: const EdgeInsets.only(right: 20),
          //     height: 7,
          //     color: Colors.amber.withOpacity(0.2),
          //   ),
          // )
        ],
      ),
    );
  }
}
