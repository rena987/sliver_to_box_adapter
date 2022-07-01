import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverToBoxAdapter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SliverToBoxAdapter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/chickenpotpie.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            alignment: Alignment.center,
            child: const Text(
              "About Chicken Pot Pie",
              style: TextStyle(fontSize: 20),
            ),
          )),
          SliverToBoxAdapter(
            child: Container(
              child: Text(
                "Between the chicken, the sauce, and the crust, you could spend an entire day in the kitchen making traditional chicken pot pie. For this version, my goal was to come up with an easy recipe that didn’t sacrifice flavor. After many trials, I found that using a rotisserie chicken for the filling and a good quality store-bought puff pastry for the crust were both excellent shortcuts. With that settled, I moved on to tackle the problem with most chicken pot pies: the bland, goopy white sauce. I thinned the sauce to a chowder-like consistency. I also borrowed an ingredient from my favorite turkey gravy – Cognac – and it added that je ne sais quoi that makes these chicken pot pies next-level delicious.",
                style: TextStyle(fontSize: 14),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
          ),
        ],
      ),
    );
  }
}
