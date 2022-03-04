import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/services/services.dart';

class New extends StatefulWidget {
  static const String imageUrl = "https://image.tmdb.org/t/p/w500";

  @override
  State<New> createState() => _NewState();
}

final _apiWeather = Base();

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("The next 5 days"),
          FutureBuilder(
            future: _apiWeather.getFromApi('Weather'),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
            {
              if (snapshot.connectionState == ConnectionState.waiting){
                return const Center(
                  child:  CircularProgressIndicator(),
                );
              }
              else if(snapshot.hasData){
                return ListView.builder(
                  shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context,int index){
                      return  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                             // Text(weather: snapshot.data[index]as Weather),
                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                height: 70,
                                width: 70,
                                child:  Image.network(
                                  "${New.imageUrl}",
                                  fit: BoxFit.cover,
                                ),
                                //color: Colors.white,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                             // Text(weather: snapshot.data[index]as Weather),
                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                height: 70,
                                width: 70,
                                child:  Image.network(
                                  "${New.imageUrl}",
                                  fit: BoxFit.cover,
                                ),
                                //color: Colors.white,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                             // Text(weather: snapshot.data[index]as Weather),
                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                height: 70,
                                width: 70,
                                child:  Image.network(
                                  "${New.imageUrl}",
                                  fit: BoxFit.cover,
                                ),
                                //color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      );
                    });
              }
              else{return Container(
                color: Colors.deepPurple,
              );
              }
            },
          ),
        ],
      ),
    );
  }
}
