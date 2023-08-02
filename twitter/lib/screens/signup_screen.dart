import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Initiate the controllers inside the initState() method.
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _confirmController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose the controllers when the widget is removed from the widget tree.
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void doNothing() {
    // This function does nothing.
  }

  @override
  Widget build(BuildContext action) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 172, 238)),
        title: const Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        shadowColor: Colors.transparent,
      ),
      body: SizedBox(
        height: screenHeight - 88,
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  Image.network(
                      'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                      height: 120),
                  CustomEntryField(
                    hint: 'Enter name',
                    controller: _nameController,
                    isPassword: false,
                  ),
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
                  CustomEntryField(
                    hint: 'Confirm password',
                    controller: _confirmController,
                    isPassword: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: CustomFlatButton(
                      label: 'Submit',
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
