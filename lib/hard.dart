import 'package:flutter/material.dart';

class hard extends StatefulWidget {
  @override
  _hardState createState() => _hardState();
}

class _hardState extends State<hard> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Are you sure?'),
              content: Text('You are going to exit the application!!'),
              actions: <Widget>[
                FlatButton(
                  child: Text('NO'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text('YES'),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          });
    }

    AssetImage one = AssetImage("images/one.png");
    AssetImage two = AssetImage("images/two.png");
    AssetImage three = AssetImage("images/three.png");
    AssetImage four = AssetImage("images/four.png");
    AssetImage five = AssetImage("images/five.png");
    AssetImage six = AssetImage("images/six.png");

    AssetImage HomeImage1, HomeImage2;
    var answer = "Try out your Luck";
    int image1 = 0;
    int image2 = 0;
    @override
    void initState() {
      super.initState();
      setState(() {
        HomeImage1 = one;
        HomeImage2 = one;
      });
    }

    void diceChanger() {
      int random = (1 + Random().nextInt(6));
      int anotherRandom = (1 + Random().nextInt(6));
      AssetImage firstImage;
      AssetImage secondImage;
      switch (random) {
        case 1:
          firstImage = one;
          image1 = image1 + 1;
          break;
        case 2:
          firstImage = two;
          image1 = image1 + 2;
          break;
        case 3:
          firstImage = three;
          image1 = image1 + 3;
          break;
        case 4:
          firstImage = four;
          image1 = image1 + 4;
          break;
        case 5:
          firstImage = five;
          image1 = image1 + 5;
          break;
        case 6:
          firstImage = six;
          image1 = image1 + 6;
          break;
      }
      switch (anotherRandom) {
        case 1:
          secondImage = one;
          image2 = image2 + 1;
          break;
        case 2:
          secondImage = two;
          image2 = image2 + 2;
          break;
        case 3:
          secondImage = three;
          image2 = image2 + 3;
          break;
        case 4:
          secondImage = four;
          image2 = image2 + 4;
          break;
        case 5:
          secondImage = five;
          image2 = image2 + 5;
          break;
        case 6:
          secondImage = six;
          image2 = image2 + 6;
          break;
      }
      setState(() {
        HomeImage1 = firstImage;
        HomeImage2 = secondImage;
        if (image1 > image2) {
          answer = "1st Dice Is Winner";
        } else {
          answer = "2nd Dice Is Winner";
        }
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Dice Roller",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xFFCA6924),
        ),
        body: WillPopScope(
          onWillPop: _onBackPressed,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    answer,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 38.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: HomeImage1,
                          width: 150.0,
                          height: 150.0,
                        ),
                        Image(
                          image: HomeImage2,
                          width: 150.0,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100.0),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                      child: Text(
                        'Roll Me',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Color(0xFFE2B13C),
                      onPressed: diceChanger,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }