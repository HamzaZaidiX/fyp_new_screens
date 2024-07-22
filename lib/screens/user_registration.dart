import 'package:flutter/material.dart';
import 'package:new_screens/components/txt_field.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController dob = TextEditingController();

  TextEditingController location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Create Account",
          style: TextStyle(
            color: Color(0xFFFFFFFF)
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
        child: Column(
          children: [
            TxtField(controller: name, label: "Name"),
            TxtField(controller: email, label: "Email"),
            TxtField(controller: password, label: "Password"),
            TxtField(controller: dob, label: "Date of Birth"),
            TxtField(controller: location, label: "Location"),
            Spacer(),
            GestureDetector(
              onTap: () {
      
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF)
                  ),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}