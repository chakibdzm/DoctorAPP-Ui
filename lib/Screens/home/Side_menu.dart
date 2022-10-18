import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';
class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: [
            SizedBox(height: getHeight(48),),
            buildMenu(
              txt: 'people',
              icon:Icons.people,
            ),
            SizedBox(height: getHeight(10),),
            buildMenu(
              txt: 'Doctors',
              icon:Icons.local_hospital,
            ),
            SizedBox(height: getHeight(10),),
            buildMenu(
              txt: 'Hospital',
                icon:Icons.maps_home_work_outlined,
            ),
            SizedBox(height: getHeight(10),),
            buildMenu(
              txt: 'Pharmacy',
              icon:Icons.local_pharmacy,
            ),
            SizedBox(height: getHeight(25),),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: getWidth(18)),
              child: Divider(color: Colors.white70,),
            ),
            SizedBox(height: getHeight(10),),
            buildMenu(
              txt: 'Contact',
              icon:Icons.contact_support_outlined,
            ),
            SizedBox(height: getHeight(10),),
            buildMenu(
              txt: 'Contact',
              icon:Icons.language,
            ),




          ],

        ),


      ),
    );
  }

  Widget buildMenu({required String txt,required icon}){
    final color=Colors.white;
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(txt,style: TextStyle(color: Colors.white),),
      onTap: (){},

    );

  }
}
