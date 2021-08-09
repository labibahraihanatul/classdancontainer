import 'package:flutter/material.dart';
import 'package:flutter1/pageOne.dart';
import 'package:flutter1/pageThree.dart';
import 'package:flutter1/pageTwo.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanHome(),
    )
);

    class HalamanHome extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: new Center(
            child: Column(
              children: <Widget>[
                
                Text(
                  'Ini adalah halaman Home',
                  style: Theme.of(context).textTheme.headline5,
                ),
                
                Text('Name : Labibah Raihanatul Salwa'),
                Text('Class : XII RPL 3'),
                Text('Absent : 29'),
                
                new MaterialButton(

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pageOne() ));

                    }, child:Text('Page One'),
                    color: Colors.yellow,
                    textColor: Colors.black,
                ),

                new MaterialButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => pageTwo() ));

                  }, child:Text('Page Two'),
                  color: Colors.pink,
                  textColor: Colors.blueAccent,
                ),

                new MaterialButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => pageThree() ));

                  }, child:Text('Page Three'),
                  color: Colors.brown,
                  textColor: Colors.white,
                ),
              ],
            )
          )
        );
      }
    }


    