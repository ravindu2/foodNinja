import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/Pattern.png"), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/main_logo.png",
                        width: 175,
                        height: 139,
                      ),
                    ),
                    GradientText(
                      "FoodNinja",
                      style: TextStyle(fontSize: 40),
                      colors: [
                        Colors.green.shade200,
                        Colors.green.shade700,
                      ],
                    ),
                    const Text("Deliver Favorite Food"),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Login To Your Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'Enter your user name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "or continue with",
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset("assets/facebook.png"),
                              Text("facebook")
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset("assets/google_icon.png"),
                                Text("Google"),
                              ],
                            ))
                        // Add your social media login buttons here
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Forget Your Password?"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
