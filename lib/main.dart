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
        
        primarySwatch: Colors.green,
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
        title: const Text('Counter App'),
      ),
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
              decoration:BoxDecoration(border:Border.all(color: Colors.black),borderRadius:BorderRadius.circular(10),
            color: Colors.red),
              height: 70,
              width: 100,
              
              margin:const EdgeInsets.all(20),
              
              child:TextButton(onPressed: (){
                setState(() {
                  a +=1;
                  
                });
              },
              
              child:const
              
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
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              
              child:
              Text(''+a.toString(),
              style:const TextStyle(color: Colors.black,fontSize: 19),
              textAlign: TextAlign.center,
              ),
              ),
            
           Container(
            decoration:BoxDecoration(border:Border.all(color: Colors.black,),borderRadius:BorderRadius.circular(10),
            color: Colors.blue),
              height: 50,
              width: 50,
              margin: const EdgeInsets.all(10),
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