import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: const Color.fromARGB(255, 28, 83, 128), // Set the app bar color to blue
      ),
      
      body: Container(
        color: Color.fromARGB(255, 121, 145, 209), // Set background color to ash color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(Icons.person),
                ),
              ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set button color to blue
                textStyle: TextStyle(fontSize: 18), // Set button text size
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Set button size
              ),
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to login page
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text(
                'Already have an account? Log In',
                style: TextStyle(color: Color.fromARGB(255, 25, 26, 13)),
              ),
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
    initialRoute: '/signup',
    routes: {
      '/signup': (context) => SignUpPage(),
    },
  ));
}
