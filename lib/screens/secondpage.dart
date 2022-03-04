import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF55A0BF),
              Color(0xFF263C47),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 40,),
              Container(
                height: 300,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                  // gradient: LinearGradient(
                  //
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  // ),
                ),
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10,)
                      ],
                    ),
                    Container(
                      width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),),

                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "SEARCH LOCATION",
                              hintStyle: TextStyle(fontWeight: FontWeight.w300,)
                          ),
                        ))
                  ]


                ),
              ),


            ],
          ),

      ),);
  }
}
