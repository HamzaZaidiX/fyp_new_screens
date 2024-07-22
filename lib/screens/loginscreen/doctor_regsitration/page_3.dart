import 'package:flutter/material.dart';
import 'package:new_screens/components/txt_field.dart';

class Page3 extends StatefulWidget {
  final PageController controller;
  Page3({super.key, required this.controller});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final TextEditingController availability = TextEditingController();

  final TextEditingController working_address = TextEditingController();

  final TextEditingController secondary_working_address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 300, // Adjust height accordingly
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TxtField(controller: availability, label: "Availability"),
              TxtField(controller: working_address, label: "Working Address"),
              TxtField(controller: secondary_working_address, label: "Working Address 2 (Optional)"),
              Spacer(),
              Row(
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
