import 'package:flutter/material.dart';
import 'SignUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi everyone!'),
        backgroundColor: Colors.blue, // Set the app bar color to blue
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[200]!,
              Colors.blue[400]!,
              Colors.blue[600]!,
              Colors.blue[800]!,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to HomePage!',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20), // Adding space between text and buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                  // Action for Sign Up button
                  // Add your logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Change button color to green
                  textStyle: TextStyle(fontSize: 20), // Change font size
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Change button size
                ),
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10), // Adding space between buttons
              ElevatedButton(
                onPressed: () {
                  // Action for Log In button
                  // Add your logic here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow, // Change button color to red
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Change font size
                ),
                child: Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
