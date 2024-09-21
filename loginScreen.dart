// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:test1_dihab/Field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/download.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                border: Border.all(
                  color: const Color.fromARGB(255, 243, 222, 33),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        const FieldForm(
                          hint: 'Enter your Email',
                          secur: false,
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        const FieldForm(
                          hint: 'Enter your password',
                          secur: true,
                          vis: Icon(
                            Icons.visibility,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.yellow,
                          textColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Text(
                            'Enter',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Don't have any account? SignUp",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
