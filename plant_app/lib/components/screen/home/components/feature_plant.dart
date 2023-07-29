import 'package:flutter/material.dart';

class FeaturePlant extends StatelessWidget {
  const FeaturePlant({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          FeaturePlantCard(
            size: size,
            image: 'assets/images/bottom_img_1.png',
            press: () {},),
          FeaturePlantCard(
            size: size,
            image: 'assets/images/bottom_img_2.png',
            press: () {},),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    super.key,
    required this.size,
    required this.image,
    required this.press,
  });

  final Size size;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: const EdgeInsets.all(12),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)
            )
          )
        ),
    );
  }
}