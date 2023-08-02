import 'package:flutter/material.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Image.network(
                  'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                  height: 120),
              CustomEntryField(
                hint: 'Enter email',
                controller: _emailController,
                isPassword: false,
              ),
              CustomEntryField(
                hint: 'Enter password',
                controller: _passwordController,
                isPassword: true,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: CustomFlatButton(
                  label: 'Submit',
                  onPressed: null,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 172, 238),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgetPassword(),
                    ),
                  );
                },
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 0, 172, 238)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
