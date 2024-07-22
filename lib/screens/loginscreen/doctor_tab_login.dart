import 'package:flutter/material.dart';
import 'package:new_screens/components/txt_field.dart';
import 'package:new_screens/screens/home_screen/main_home.dart';
import 'package:new_screens/globals.dart' as globals;

class DoctorTabLogin extends StatefulWidget {
  final Function toggleLoading;
  const DoctorTabLogin({super.key, required this.toggleLoading});

  @override
  State<DoctorTabLogin> createState() => _DoctorTabLoginState();
}

class _DoctorTabLoginState extends State<DoctorTabLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            TxtField(
              controller: usernameController, 
              label: "Email"),
            TxtField(
              controller: passwordController, 
              label: "Password"),
            SizedBox(height: 8.0),
            Row(
              children: [
                Checkbox(
                  value: checkbox,
                  activeColor: Theme.of(context).primaryColor, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(
                      width: 0.05
                    )
                  ),
                  onChanged: (value) {
                    setState(() {
                      checkbox = value!;
                    });
                  }
                ),
                Text(
                  "Remember Me",
                  style: TextStyle(
                    color: Color(0xFF000000),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                 widget.toggleLoading();
                  Future.delayed(Duration(seconds: 5), () {
                    widget.toggleLoading();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dashboard()));
                    setState(() {
                      globals.isDoctorLogin = true;
                    });
                  });
                  
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "Signup as Doctor",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}