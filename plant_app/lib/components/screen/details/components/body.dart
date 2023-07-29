import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget> [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                  children: <Widget> [
                    Align(
                      alignment: Alignment.center,
                      
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_rounded),
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                        ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 48,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 184, 176, 154)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.wb_sunny_outlined),
                              iconSize: 30,
                              color: Color.fromARGB(255, 4, 74, 32),
                              onPressed: (){},
                              ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      height: 48,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 184, 176, 154)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.water_drop_outlined),
                              iconSize: 30,
                              color: const Color.fromARGB(255, 4, 74, 32),
                              onPressed: (){},
                              ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      height: 48,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 184, 176, 154)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.hub_outlined),
                              iconSize: 30,
                              color: const Color.fromARGB(255, 4, 74, 32),
                              onPressed: (){},
                              ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      height: 48,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 184, 176, 154)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.wind_power_outlined),
                              iconSize: 30,
                              color: const Color.fromARGB(255, 4, 74, 32),
                              onPressed: (){},
                              ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      height: 48,
                      width: 62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 184, 176, 154)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(Icons.alarm),
                              iconSize: 30,
                              color: const Color.fromARGB(255, 4, 74, 32),
                              onPressed: (){},
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
            
              Container(
                height: size.height * 0.8,
                width: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.black12.withOpacity(0.12)
                      )
                    ]
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}