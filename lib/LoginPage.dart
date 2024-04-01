import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/username.dart';
import 'package:flutter_application_1/quizCategories.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' SignIn '),
        ),
        body: const Padding(

          padding: EdgeInsets.all(19.0),
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            controller: userName,
            decoration: const InputDecoration(labelText: 'UserName'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'الرجاء إدخال اسم المستخدم';
              }
              return null;
            },
          ),
    
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password '),
            obscureText: true,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'الرجاء إدخال كلمة المرور';
              }
              return null;
            },
          ),
          const SizedBox(height: 550.0),
            
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const quizCategories(),
                                    ),
                                  );
                                }
                              },
                              child: const Text("Login"))),
                            
                    
        ],
      ),
    );
  }
}
