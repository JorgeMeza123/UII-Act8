import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabla y tarjeta de flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Refaccionaria Meza'),
          backgroundColor: const Color(0xff99d6ff),
        ),
        body: Container(
          height: 480,
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              print('Esta carta se puede presionar');
            },
            child: Card(
              elevation: 40,
              color: Colors.grey[80],
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: Image(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/JorgeMeza123/img_flutterflow_IOS_6J/main/Act12NavBar_Flutterflow/turbo.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Turbo Cargador',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'El Turbo cargador sirve para meter mas libras de presion de aire al motor',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {
                      0: FixedColumnWidth(150),
                      1: FlexColumnWidth(),
                      2: FlexColumnWidth(),
                    },
                    children: [
                      TableRow(
                        children: [
                          Container(
                            child: Text('Ociones'),
                          ),
                          Container(
                            child: Text('Precios'),
                          ),
                          Container(
                            child: Text('Marca'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            child: Text('Twin Turbo'),
                          ),
                          Container(
                            child: Text('15,000 mxn.'),
                          ),
                          Container(
                            child: Text('Fox'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            child: Text('BiTurbo'),
                          ),
                          Container(
                            child: Text('25,000 mxn.'),
                          ),
                          Container(
                            child: Text('Kicks'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
