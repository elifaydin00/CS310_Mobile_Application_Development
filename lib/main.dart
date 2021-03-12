import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Welcome(),
));

//this is original code from Class
/*class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CS310 Mobile Application',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            letterSpacing: 1.1,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Image(
          //image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/417MahKs6fL.png'),
          image: AssetImage('assets/mobil.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}*/

//this is my extended codes
class Welcome extends StatelessWidget {

  void buttonTapped() {
    print('Button tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CS310',
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            letterSpacing: 1.1,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings_applications_sharp), onPressed: () {}),
          IconButton(icon: Icon(Icons.help), onPressed: () {}),
        ],
        backgroundColor: Colors.red[900],
      ),
      body: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('A Simple Text',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.1,
                  color: Colors.lightGreenAccent,
                ),
              ),
              Container(
                color: Colors.lightBlue,
                padding: EdgeInsets.all(30.0), //padding sets inside of container, margin sets outside of container
                child: Text('Container',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.1,
                    color: Colors.white,
                  ),
                ),
              ),
              FlatButton(
                onPressed: buttonTapped,
                color: Colors.amber,
                child: Text('Im a Flat Button',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.1,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttonTapped,
        child: Icon(
          Icons.add,
          size: 50.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}