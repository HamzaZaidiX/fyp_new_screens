import 'package:flutter/material.dart';
import 'package:new_screens/components/txt_field.dart';

class Page1 extends StatefulWidget {
  final PageController controller;
  Page1({super.key, required this.controller});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController doctor_name = TextEditingController();

  final TextEditingController doctor_cnic = TextEditingController();

  final TextEditingController doctor_pmdc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TxtField(controller: doctor_name, label: "Doctor's Name"),
              TxtField(controller: doctor_cnic, label: "Doctor's CNIC"),
              TxtField(controller: doctor_pmdc, label: "Doctor's PMDC No#"),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
              SizedBox(height: 15.0,)
            ],
          ),
        ),
      ),
    );
  }
}
