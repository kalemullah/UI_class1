import 'package:flutter/material.dart';

////
///  column-----> main axis is vertical, cross axis is horizontal
/// row-----> main axis is horizontal, cross axis is vertical
///
///
///
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            child: Container(
              width: 350,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.notifications_off_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Follow',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.message,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Message',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'favorite',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Center(
          //   child: Container(
          //     transform: Matrix4.rotationZ(0.4),
          //     // padding: const EdgeInsets.only(left: ),
          //     decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Colors.white,
          //           width: 2,
          //         ),
          //         color: Colors.amber[100],
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(40),
          //         ),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.black,
          //             blurRadius: 10,
          //             spreadRadius: 1,
          //           ),
          //         ]),
          //     height: 200,
          //     width: 200,
          //     child: const Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         Text('Hello,',
          //             style: TextStyle(
          //                 fontSize: 34,
          //                 fontWeight: FontWeight.w500,
          //                 color: Colors.amber
          //                 // color: Colors.deepPurple,
          //                 )
          //             // style: ,
          //             ),
          //         Icon(
          //           Icons.message,
          //           color: Colors.amber,
          //           size: 50,
          //         ),
          //       ],
          //     ),
          //   ),
          // ));
        ));
  }
}
