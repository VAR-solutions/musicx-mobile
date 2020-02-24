import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusicX',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'MusicX'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.grey,
              onPressed: () {}),
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.black12,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.menu), onPressed: () {}, color: Colors.grey)
          ],
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 150,
                  child: FlutterLogo(
                    size: 150,
                  ),
                )
              ],
            ),
            Container(
              child: Center(
                  child: Text(
                "Low Life",
                style: TextStyle(fontSize: 18),
              )),
            ),
            Center(
                child: Text(
              "Future ft. The weekend",
              style: TextStyle(fontSize: 12),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
                IconButton(icon: Icon(Icons.pause), onPressed: () {}),
                IconButton(icon: Icon(Icons.arrow_right), onPressed: () {})
              ],
            )
          ],
        ));
  }
}
