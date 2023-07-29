import 'package:flutter/material.dart';
import 'package:plant_app/components/screen/home/components/feature_plant.dart';
import 'package:plant_app/components/screen/home/components/recommend_plant.dart';
import 'package:plant_app/components/screen/home/components/title_with_more_btn.dart';

import 'header_with_searchBox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithBtn(
            title: "Recommend",
            press: () {},
          ),
          RecommendPlant(),
          TitleWithBtn(
            title: "Feature Plants",
            press: (){},
          ),
          FeaturePlant(size: size),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}