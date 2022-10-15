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
    return Container();
  }
}
