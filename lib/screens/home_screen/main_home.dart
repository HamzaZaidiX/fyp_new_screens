import 'package:flutter/material.dart';
import 'package:new_screens/globals.dart' as globals;

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final List<String> dashboardlists = [
    "Seziure Diary",
    !globals.isDoctorLogin ?  "Doctor \nAppointment" : "Scheduled\nAppointments",
    "Medication",
    "Excercise",
    "Community",
    "First Aid \nInstructions",
    "Water Reminder",
    "Noise Checker",
    "Ambulance",
    "ChatBot"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0xFFFFFFFFF)
          ),
        ),
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 15.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
          
                },
                child: Icon(
                  Icons.power_settings_new_outlined,
                  color: Color(0xFFFFFFFFF),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 200.0,
                  width: 200,
                ),
              ),
              SizedBox(height: 15.0),
              GridView.builder(
                shrinkWrap: true,  // Add this to make GridView shrink to fit the content
                physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10.0, // Spacing between columns
                  mainAxisSpacing: 10.0, // Spacing between rows
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          dashboardlists[index],
                          style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}