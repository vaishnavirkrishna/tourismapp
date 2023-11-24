import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourismapp/view/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String pass = '';
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    Future<void> setpass(String value) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString('pass', value);
    }

    Future<void> getpass() async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      setState(() {
        pass = pref.getString('pass') ?? "";
      });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "username"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "password"),
              ),
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    String text1 = nameController.text;
                    setpass(text1);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyWidget(
                                  title: text1,
                                )));
                  },
                  child: Text("Login")),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}
