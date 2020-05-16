import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_back,color: Colors.white,),
                Text("Playing Now",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                Icon(Icons.menu,color: Colors.white,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Icon(Icons.favorite,color: Colors.pinkAccent,),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(200)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset("images/artist.jpg",fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Text("Lose it",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Text("flume ft. Vic Mensa",style: TextStyle(fontSize: 15,color: Colors.grey.shade700),),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("1.50",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        Text("3.40",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Slider(
                    value: 0.5,
                    onChanged: (value){},
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey.shade300,
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.repeat,size: 36,),
                        Icon(Icons.skip_previous,size: 36,),
                        Container(
                          height: 60,
                          width: 60,
                          child: FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: Colors.deepPurple,
                            child: Icon(Icons.pause,color: Colors.white,size: 30,),
                          ),
                        ),
                        Icon(Icons.skip_next,size: 36,),
                        Icon(Icons.shuffle,size: 36,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}