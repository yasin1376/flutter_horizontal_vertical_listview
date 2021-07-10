import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal & Vertical ListView"),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  width: 100,
                  child: Center(
                    child: Text("Card $index"),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) => ListTile(
                  title: Text("List $index"),
                ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
