import 'package:flutter/material.dart';
import 'package:new_screens/components/txt_field.dart';

class Page2 extends StatefulWidget {
  final PageController controller;
  Page2({super.key, required this.controller});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController contact_no = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height:  300.0, // Adjust height accordingly
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TxtField(controller: contact_no, label: "Contact No"),
              TxtField(controller: email, label: "Email"),
              TxtField(controller: password, label: "Password"),
              Spacer(),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                        onTap: () {
                          widget.controller.previousPage(duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFFFFFFFFF),
                            size: 25.0,
                          ),
                        ),
                      ),
                      GestureDetector(
                    onTap: () {
                      widget.controller.nextPage(duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle
                      ),
                      child: Transform.rotate(
                        angle: 180 * (22 / 7) / 180,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xFFFFFFFFF),
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  
              
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
