import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
  //We can also write the body of the main method
  // like below,
  // main () => runApp(MyApp()); this is called the fat arrow
  //notation, and it is used if your method has only
  // one statement in the body.
}

// the below stateful widget is implemented when 
// we want to deal with data dynamically, and needs 
// the app to make some changes when buttons are pressed.
class MyApp extends StatefulWidget {
@override
State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
 List<String> _products = ['Image'];  
  /*
  the StatelessWidget class also has a build method.
  So to explicitly override this, we can use the override keyword
  above the build method.
  This is important if you are working in a team of 
  developers and you wanna explicitly override the build method.
  */

  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NH PHOTOGRAPHY'),
        ),

        body: Column( 
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),//The value of the insets is in pixels
                                            // So how wide depends on the pixel density of the device
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('image added');
                });
              },
              child: Text('Add Picture'),),),
            
           Column(children:  _products.map((element) => Card(
              //the square bracket <Widget> can be omitted
              child: Column(
                children: <Widget>[
                  Image.asset('assets/005.jpg'),
                  Text(element)
                ],
              ),
            ),).toList()
           ) 
          ],
        ),
        //the card widget ads an object with a nice drop shadow...
      ),
    );
  }
}
