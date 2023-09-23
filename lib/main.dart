import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),

    );
  }
}


/* To Do List

Step 1: create main layout of the  app(only UI)

Step 2: login to your firebase consle.
Step 3: create a new firebase project
Step 4 : Lets add the firbase Depenedecide for flutter


*/
class HomePage extends StatefulWidget{
  const HomePage({Key ? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LoginScreen(),
    );
  }
}


class LoginScreen extends StatefulWidget{
  const LoginScreen({Key ? key}) : super(key : key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text(
            "MyApp Title",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
         const Text(
            "Login to Your App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
         const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail , color: Colors.black, )
            ),
          ),
         const SizedBox(
            height: 26.0,
          ),
         const TextField(
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(Icons.lock , color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
         const Text(
            "Don't Remember your Password ?",
            style: TextStyle(color: Colors.blue),
          ),
         const SizedBox(
            height: 88.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor : Color(0xFF0069FE),
              elevation : 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)
              ),
              onPressed:() {},
            child: Text("Login" ,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),),),
          ),
        ],
      ),
    );
  }
}

