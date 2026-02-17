import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text('CSC309', style: TextStyle(),),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(padding: EdgeInsets.all(25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          TextField(
          decoration: InputDecoration(
          hintText: 'Email'
          ),
        ),
        SizedBox(height: 15,),
        TextField(
          obscureText: true,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              hintText: 'Password'
          ),
        ),
        SizedBox(height: 15,),
        InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Login(),),
            );
          },
          child: Text('Forgot Password', style: TextStyle(fontSize: 20, color: Colors.green),)),
      SizedBox(height: 15,),
      Text('COUNTING>>> $_counter', style: TextStyle(fontSize: 30)),
      ElevatedButton(onPressed: (){
        setState(() {
          _counter = _counter + 1;
        });
        _counter = _counter + 1;
        debugPrint('COUNTING>>> $_counter', );
      }, child: Text('Login')),
      SizedBox(height: 15,),
      Text('Register', style: TextStyle(fontSize: 20, color: Colors.green),),
      ],
    ),
    //floatingActionButton: FloatingActionButton(onPressed: (){}),
    )

    ));
  }
}