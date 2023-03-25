import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Card(
        child: 
        Column(
          children: [
            Image.asset('assets/nature-3082832_640.jpg'),
            SizedBox(height: 30,),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Padding(
                padding: const EdgeInsets.only(left:23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                     Text('Oeschinen Lake Campground',style: TextStyle(
                      fontWeight: FontWeight.w700
                     ),),
                     SizedBox(height: 7.0,),
                     Text('Kandersteg, Switzerland',style: TextStyle(
                      fontWeight: FontWeight.w200
                     ),
                     textAlign: TextAlign.start,
                     )
                  ],
                ),
              ),
              SizedBox(width: 90,),
              Icon(Icons.star,color: Colors.red,),
              Text('41')
            ],),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
              children: const [
                Icon(Icons.phone,color: Colors.blue,),
                Text('CALL',style: TextStyle(color: Colors.blue),)
              ],
            ),
              Column(
              children: const [
                Icon(Icons.near_me,color: Colors.blue,),
                Text('ROUTE',style: TextStyle(color: Colors.blue),)
              ],
            ),
              Column(
              children: const [
                Icon(Icons.share,color: Colors.blue,),
                Text('SHARE',style: TextStyle(color: Colors.blue),)
              ],
            ),
            ],),
            const SizedBox(height: 35,),
            Container(
              constraints: BoxConstraints.tight(const Size(350, 200)),
              child: const Text('Lake Oeschinen lie at the foot of the Blüemlisalp in '
              'the Bernese Alps. Situated 1,578 meters above sea level, It is '
              'one of the larger Alpine Lakes. A gondola ride from Kanderseg, '
              'followed by a half-hour walk through pastures and pine forest, '
              'leads you to the lake, which warms to 20 degree Celsuius in the '
              'summer, Activities enjoyed here include rowling, and riding '
              'the summer toboggan run.'),
            )
          ],
        ),
      )
    );
  }
}
