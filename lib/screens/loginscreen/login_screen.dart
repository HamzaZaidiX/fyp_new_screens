import 'package:flutter/material.dart';
import 'package:new_screens/components/loader.dart';
import 'package:new_screens/screens/loginscreen/doctor_tab_login.dart';
import 'package:new_screens/screens/loginscreen/user_tab_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  void toggleLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Specify the number of tabs
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                ),
                SizedBox(height: 5.0),
                TabBar(
                  labelColor: Theme.of(context).primaryColor,
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  tabs: [
                    Tab(
                      text: "User",
                    ),
                    Tab(
                      text: "Doctor",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      UserTabLogin(toggleLoading: toggleLoading),
                      DoctorTabLogin(toggleLoading: toggleLoading),
                    ],
                  ),
                ),
              ],
            ),
            if (isLoading)
              Center(
                child: Loader(),
              ),
          ],
        ),
      ),
    );
  }
}
