import 'package:flutter/material.dart';
import 'register.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0D1B2A), // Dark navy background
        appBar: AppBar(
          title: const Text('CSC309'),
          backgroundColor: const Color(0xFF3A0CA3), // Purple AppBar
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            color: Color(0xFFF8F9FA), // Soft cream body
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.jpeg"),
              const SizedBox(height: 14),

              TextField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(height: 15),

              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(height: 15),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ForgotPassword()),
                  );
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3A0CA3), // Purple link
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'COUNTING>>> $_counter',
                style: const TextStyle(
                  fontSize: 30,
                  color: Color(0xFF3A0CA3), // Purple counter
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3A0CA3), // Purple button
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                  debugPrint('COUNTING>>> $_counter');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 25),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Register(),
                    ),
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3A0CA3), // Purple
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

