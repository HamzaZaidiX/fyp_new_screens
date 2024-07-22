import 'package:flutter/material.dart';
import 'package:new_screens/screens/loginscreen/doctor_regsitration/page_1.dart';
import 'package:new_screens/screens/loginscreen/doctor_regsitration/page_2.dart';
import 'package:new_screens/screens/loginscreen/doctor_regsitration/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DoctorRegistration extends StatefulWidget {
  DoctorRegistration({super.key});

  @override
  State<DoctorRegistration> createState() => _DoctorRegistrationState();
}

class _DoctorRegistrationState extends State<DoctorRegistration> {
  final PageController controller = PageController();
   final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      currentPageNotifier.value = controller.page?.round() ?? 0;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    currentPageNotifier.dispose();
    super.dispose();
  }

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
          "Doctor Sign Up",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Page1(
                controller: controller,
              ),
              Page2(
                controller: controller,
              ),
              Page3(
                controller: controller,
              ),
            ],
          ),
          Positioned(
            top: 320.0,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
              ),
            ),
          ),
          
            Positioned(
              top: 380,
              right: 20,
              child: GestureDetector(
                onTap: () {
                          
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF)
                    ),
                  ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}
