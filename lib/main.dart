import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.add_alert,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        TextWidget(),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.add_location,
                                color: Colors.black,
                              ),
                              onPressed: null,
                            ),
                            TextWidgetOne(),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        ButtonWidget(),
                        SizedBox(
                          height: 70.0,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [TextWidgetThree(), TextWidgetFour()],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [TextWidgetFive(), TextWidgetSix()],
                            )
                          ],
                        )
                      ],
                    ),
                    CardView(),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/p2.jpg",
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/p3.jpg",
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/p4.jpg",
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/p5.jpg",
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/p6.jpg",
                      width: 70,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "images/shirt.png",
                      width: 30,
                      height: 30,
                    ),
                    Image.asset(
                      "images/facebook.png",
                      width: 30,
                      height: 30,
                    ),
                    Image.asset(
                      "images/camera.png",
                      width: 30,
                      height: 30,
                    ),
                    Image.asset(
                      "images/dicon.png",
                      width: 30,
                      height: 30,
                    ),
                    Image.asset(
                      "images/twitter.png",
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Texttitle(),
                SizedBox(
                  height: 15.0,
                ),
                TextParagraph()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: null,
      child: Text(
        "follow",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "John McDonald",
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
    );
  }
}

class TextWidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Los Angles,CA",
      style: TextStyle(
        color: Colors.black26,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextWidgetTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
  }
}

class TextWidgetThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("35",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ));
  }
}

class TextWidgetFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("posts",
        style: TextStyle(
          color: Colors.black38,
          fontSize: 15,
        ));
  }
}

class TextWidgetFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("1256",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ));
  }
}

class TextWidgetSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("follower",
        style: TextStyle(
          color: Colors.black38,
          fontSize: 15,
        ));
  }
}

class Texttitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "About",
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class TextParagraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.",
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    );
  }
}

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        child: Image.asset(
          'images/p1.jpg',
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
