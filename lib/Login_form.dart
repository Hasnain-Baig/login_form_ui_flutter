import 'package:flutter/material.dart';

class Login_Form extends StatefulWidget {
  @override
  _Login_FormState createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {


  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var hide = true;


  passwordHide() {
    setState(() {
      hide = !hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LOGIN FORM")),
        // backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  autofocus: true,
                  controller:email ,

                                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      hintText: 'Email Address'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  autofocus: true,
                  obscureText: hide,
                  controller: password, //for passwords to hide
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: GestureDetector(
                        onTap: passwordHide,
                        child: hide
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(onTap: () {
                
              }, child: Text("Forgot Password?")),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print("Email:${email.text}\nPassword:${password.text}");
                  },
                  child: Text("LOGIN"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
