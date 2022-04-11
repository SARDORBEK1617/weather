import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';

import '../models/forecast.dart';
import '../models/services/services.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  // final Weather weather;


  //static const String imageUrl ="http://image.tmdb.org/t/p/w500";
  @override
  State<Body> createState() => _BodyState();
}

final _apiWeather = Base();

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 26,bottom: 8.0),
            child: const Text("The next 5 days",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          FutureBuilder(
            future: _apiWeather.getFromApi('Weather'),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Text("Monday"),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius:const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                height: 66,
                                width: 66,
                                child: Column(
                                  children: [
                                    Text((snapshot.data[index] as Forecast).weather![0].description!,
                                      style:const TextStyle(color: Colors.deepPurple),),
                                    SizedBox(height: 2,),
                                    Text(widget.toString()),
                                    // Text((snapshot.data[index] as Forecast).weather![0].main!,
                                    //   style:const TextStyle(color: Colors.deepPurple),),
                                   // movieItem(snapshot.data[index]as Forecast),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        );
                      }),
                );
              } else {
                return Container(
                  color: Colors.deepPurple,
                );
              }
            },
          ),
        ],
      ),
    );
  }
  Widget movieItem(Forecast data){
    return Text("${data.id}");
  }
}
