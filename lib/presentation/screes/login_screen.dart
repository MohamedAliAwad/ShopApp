import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vfsocial/logic/blocs/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vfsocial/logic/providers/user_provider.dart';
import 'package:vfsocial/presentation/component/components.dart';
import 'package:vfsocial/presentation/screes/signup_screen.dart';

enum AuthMode { Signup, Login }

class ShopLoginScreen extends StatelessWidget {
  static const routeName = '/auth';
  ShopLoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var emailControl = TextEditingController();
  var passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return /* BlocProvider(
      create: (context) => AuthBloc(UserProvider()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return*/
        Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Join us for Special offers!!",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      controller: emailControl,
                      decoration: InputDecoration(
                        labelText: "E-mail Adress",
                        prefixIcon: Icon(Icons.email_sharp),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      controller: passwordControl,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          print(emailControl.text);
                          print(passwordControl.text);
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        SizedBox(
                          width: 1,
                        ),
                        TextButton(
                          onPressed: () {
                            navigateTo(context, SignupScreen());
                          },
                          child: Text("Register"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
      /*  },
      ),
    );
  }
}
*/