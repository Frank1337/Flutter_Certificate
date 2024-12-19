import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    "Email Adress: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _emailController,
                      onChanged: (value) {
                        print("Email: $value");
                      },
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.red,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    "Password:      ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      autocorrect: false,
                      textInputAction: TextInputAction.done,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Email: ${_emailController.text}");
                      print("Password: ${_passwordController.text}");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
