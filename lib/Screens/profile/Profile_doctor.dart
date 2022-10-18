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
          Positioned(
            child: FittedBox(
              child: Image.asset(
                'assets/illustrations/Illustration1.png',
              ),
              fit: BoxFit.fill,
            ),
            right: 9,
          ),
          Positioned(
            child: Stack(children: [
              Positioned(
                child: Container(
                  height: getHeight(598),
                  width: getWidth(375),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadiusDirectional.circular(getHeight(42)),
                  ),
                ),
              ),
              Positioned(child: Text('Dr. Stella Kane',
              style: TextStyle(
                fontSize: getHeight(18),
                fontWeight: FontWeight.w900
              ),),
              left: getWidth(140),
                top: getHeight(41),
              ),
              Positioned(child: Image.asset('assets/illustrations/5 1.png'),
              
              left: getWidth(25),
                top: getHeight(25),
              ),

              Positioned(child: Text('Heart Surgeon - Flower Hospitals',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(14),
                  color: Colors.grey,
                ),
              ),
                left: getWidth(141),
                top: getHeight(65),
              ),
              Positioned(child: Text('About Doctor',
              style: TextStyle(
                fontSize: getHeight(16),
                fontWeight: FontWeight.w700,
                color: Colors.black,
                

              ),),
              left: getWidth(25),
                top: getHeight(169),
              ),
              Positioned(child: Text('lorem integer golrr rgltk sorfn frgro rgot rtr \n'
                  'rjoksi frortk form gity gtay cler tyoht toygh \n'
                  'chkoe glolr rgrk golkm dettr fogor rgrkot ryjo \n'
                  'fros chkio bnay thljk tomp preofko gtihj kbkh fopgp gtgh gta \n'
                'rjoksi frortk form gity gtay cler tyoht toygh \n'
                    'chkoe glolr rgrk golkm dettr fogor rgrkot ryjo lorem nikolpr \n'
                    'fros chkio bnay thljk tomp preofko gtihj kbkh',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: getHeight(14),
                  color: Colors.grey,
                ),
                  ),
                left: getWidth(25),
                top: getHeight(204),
              ),
              



Positioned(child: Text('Upcoming Schedules',
  style: TextStyle(
    fontSize: getHeight(16),
    fontWeight: FontWeight.w700,
    color: Colors.black,


  ),),
left: getWidth(25),
  top: getHeight(358),
)

            ]),
            top: getHeight(249),
          ),

          
        ],
      ),
    );
  }
}
