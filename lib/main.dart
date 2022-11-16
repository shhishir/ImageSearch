import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Search',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Image search app'),
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
  int _counter = 0;
  void _addByTwo() {
    setState(() {
      _counter = _counter + 2;
    });
  }
  void _subByOne() {
    setState(() {
      _counter = _counter - 1;
    });
  }
  void _addByFour() {
    setState(() {
      _counter = _counter + 4;
    });
  }
  void _subByTwo() {
    setState(() {
      _counter = _counter - 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[ Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(80.0, 20.0, 10.0, 0.0),
                child: SizedBox(
                  width: 200.0,
                  child: TextField(
                    style: TextStyle( color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                    ),
                ),),),
              Padding(padding:const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text('$_counter',
                style: const TextStyle(
                    backgroundColor: Colors.black12,
                    fontSize: 40)),)
            ]),
            _addFirstRowButtons(),
            _addSecondRowButtons()
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _addFirstRowButtons(){
    return SizedBox(
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 65.0, vertical: 70.0),
                primary: Colors.red[300]!,
              ),
              onPressed: _addByTwo,
              child: const Text("Add 2", style: TextStyle(color: Colors.black),),
            )),
            const Spacer(),
            Padding(padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 0.0),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 70.0),
                    primary: Colors.blue[300]!,
              ),
              onPressed: _subByOne,
                child: const Text("Subtract 1", style: TextStyle(color: Colors.black),),
              ),
            )
        ])
      ]));
  }

  _addSecondRowButtons(){
    return SizedBox(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 65.0, vertical: 70.0),
                    primary: Colors.green[300]!,
                  ),
                  onPressed: _addByFour,
                  child: const Text("Add 4", style: TextStyle(color: Colors.black),
                  ),
                )),
            const Spacer(),
            Padding(padding: const EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 0.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 70.0),
                  primary: Colors.amber[300]!,
                ),
                onPressed: _subByTwo,
                child: const Text("Subtract 2",style: TextStyle(color: Colors.black)),
              ),
            )
          ])
        ]));
  }
}
