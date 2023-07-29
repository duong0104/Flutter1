import 'package:flutter/material.dart';
import 'package:plant_app/components/screen/details/details_screen.dart';

class RecommendPlant extends StatelessWidget {
  RecommendPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget> [
              RecommendPlantCard(
                image: 'assets/images/image_1.png',
                title: 'Samatha',
                price: 440,
                country: 'Russia',
                press: (){
                   
                },
              ),
              RecommendPlantCard(
                image: 'assets/images/image_2.png',
                title: 'Samatha',
                price: 440,
                country: 'Russia',
                press: (){
                //   Future.delayed(const Duration(milliseconds: 5000), () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                // });
                },
              ),
              RecommendPlantCard(
                image: 'assets/images/image_3.png',
                title: 'Samatha',
                price: 440,
                country: 'Russia',
                press: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
                },
              ),
            ],
          ),
        );
  }
}

class RecommendPlantCard extends StatelessWidget {
  
  const RecommendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20
      ),
      child: Column(
        children: <Widget> [
          Image.asset(image),
          GestureDetector(
            onTap: (){
              press;
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.black.withOpacity(0.2)
                  ),
                ]
              ),
              child: Row(children: <Widget> [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(), 
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "$country".toUpperCase(), 
                      style: TextStyle(color: Colors.black.withOpacity(0.2))
                    )
                  ]
                ),
                ),
                const Spacer(),
                Text('$price\$',
                style: const TextStyle(color: Color.fromARGB(255, 3, 127, 7), fontWeight: FontWeight.bold),)
              ]),
            ),
          )
        ],
      ),
    );
  }
}