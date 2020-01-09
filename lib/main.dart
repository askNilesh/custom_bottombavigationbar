import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool expandMenuClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: expandMenuClicked
            ? Wrap(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.photo_library,
                            color: Colors.blue),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildBottomRow()
                ],
              )
            : buildBottomRow(),
      ),
    );
  }

  Row buildBottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          onPressed: () {
            setState(() {
              expandMenuClicked = false;
            });
          },
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              expandMenuClicked = !expandMenuClicked;
            });
          },
          icon: Icon(
            expandMenuClicked ? Icons.expand_more : Icons.expand_less,
            color: expandMenuClicked ? Colors.blue : Colors.grey,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              expandMenuClicked = false;
            });
          },
          icon: Icon(Icons.save),
        ),
      ],
    );
  }
}
