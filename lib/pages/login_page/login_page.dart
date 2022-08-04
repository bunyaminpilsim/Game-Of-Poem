import 'package:flutter/material.dart';
import 'package:garden_of_poem/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/stars.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  hintText: "Username",
                  label: "Username",
                  icon: Icon(Icons.person_outline_outlined, color: Colors.white),
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  hintText: "Password",
                  label: "Password",
                  icon: Icon(Icons.lock_outline, color: Colors.white),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.lightBlue),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(fontSize: 15, color: Colors.white, decoration: TextDecoration.underline),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700, decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
