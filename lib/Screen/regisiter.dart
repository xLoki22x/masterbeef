import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecomtest/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

class resiterscreen extends StatefulWidget {

  @override
  State<resiterscreen> createState() => _resiterscreenState();
}

class _resiterscreenState extends State<resiterscreen> {
  final Formkey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: Formkey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Email',
                style: TextStyle(fontSize: 15),
              ),
              TextFormField(
                  validator: MultiValidator([
                    EmailValidator(errorText: "รูปแบบผิด"),
                    RequiredValidator(errorText: 'email is required'),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (email) {
                    profile.email = email!;
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 15),
              ),
              TextFormField(
                validator: RequiredValidator(errorText: 'password is required'),
                obscureText: true,
                onSaved: (password) {
                  profile.password = password!;
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'submit',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (Formkey.currentState!.validate()) {
                      Formkey.currentState?.save();
                      print("email = " +
                          (profile.email) +
                          " password =" +
                          (profile.password));
                      Formkey.currentState?.reset();
                    }
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
