import 'package:doctor/Screens/home/homescreen.dart';
import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getHeight(140),),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text('Choose The Doctor \nYou Want',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getHeight(30)
            ),),
          ),
          SizedBox(height: getHeight(8),),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: Text('It \'s right we are not doctors but \n'
                'we can bring you that one you need',
              style: TextStyle(
                fontSize: getHeight(14),
                fontWeight: FontWeight.w400,

              ),
            ),
          ),
          SizedBox(height: getHeight(15),),
          Padding(
            padding: EdgeInsets.only(left: getWidth(40)),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage())),
              child: Container(
                height: getHeight(50),
                width: getWidth(125),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getHeight(18)),
                  color: Color(0xFFEF716B),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: getWidth(30),top: getHeight(15)),
                  child: Text('Consult !',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: getHeight(18),
    ),
                ),
              ),
            ),
          ),
          ),
          SizedBox(height: getHeight(10),),
          Expanded(child: Image.asset('assets/illustrations/Illustration.png',
          )),
        ],
      ),
    );
  }
}
