import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UTS(),
    );
  }
}

class UTS extends StatefulWidget {
  const UTS({super.key});

  @override
  State<UTS> createState() => _UTSState();
}

class _UTSState extends State<UTS> {
  @override
  Widget build(BuildContext context) {
    var _productName = [
      'Sepatu Running 1',
      'Sepatu Running 2',
      'Sepatu Running 3',
    ];

    var _productPrice = [
      'Rp. 1.000.000',
      'Rp. 1.000.000',
      'Rp. 1.000.000',
    ];

    var _productImage = [
      'images/sepatu-1.jpg',
      'images/sepatu-1.jpg',
      'images/sepatu-1.jpg',
    ];

    var _productColor = [
      Colors.orange,
      Colors.blue,
      Colors.purple,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoes'),
        centerTitle: false,
        actions: [
          Image.network(
              "https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: _productName.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: _productColor[index],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text("${_productName[index]}"),
                          Text("${_productPrice[index]}"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Image.asset("${_productImage[index]}"),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
