import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double a=00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Press For Incriment And Dicriment'),
      ),
      body:Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
              margin: EdgeInsets.all(20),
              child:TextButton(onPressed: (){
                setState(() {
                  a +=1;
                  
                });
              },
              child:
              Text('+',
              style: TextStyle(color: Colors.black,fontSize: 19),
              textAlign: TextAlign.center,
              ),
              )
              
               
            ),
            Container(
              height: 50,
              width: 50,
              //color: Colors.blue,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              
              child:
              Text(''+a.toString(),
              style: TextStyle(color: Colors.black,fontSize: 19),
              textAlign: TextAlign.center,
              ),
              ),
            
           Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child:TextButton(onPressed: (){
                setState(() {
                  a -=1;
                  
                });
              },
              child:
              Text('-',
              style: TextStyle(color: Colors.black,fontSize: 19),
              textAlign: TextAlign.center,
              ),
              )
            )
          ],
        ),
      ) ,
    );
  }
}