import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';
class ProfileDoc extends StatefulWidget {
  const ProfileDoc({Key? key}) : super(key: key);

  @override
  State<ProfileDoc> createState() => _ProfileDocState();
}

class _ProfileDocState extends State<ProfileDoc> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/illustrations/Illustration1.png',
          ),

          Positioned(child:   Container(
            height: getHeight(598),
            width: getWidth(375),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(getHeight(42)),
            ),
          ),
            top: getHeight(249),
          )


        ],
      ),
    );
  }
}
