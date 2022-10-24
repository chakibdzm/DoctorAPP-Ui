import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              width: getWidth(375),
              child: Center(
                child: Image.asset(
                  'assets/illustrations/Illustration1.png',
                ),
              ),
            ),
            top: 0,
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
              Positioned(
                child: Text(
                  'Dr. Stella Kane',
                  style: TextStyle(
                      fontSize: getHeight(18), fontWeight: FontWeight.w900),
                ),
                left: getWidth(140),
                top: getHeight(41),
              ),
              Positioned(
                child: Image.asset('assets/illustrations/5 1.png'),
                left: getWidth(25),
                top: getHeight(25),
              ),
              Positioned(
                child: Text(
                  'Heart Surgeon - Flower Hospitals',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: getHeight(14),
                    color: Colors.grey,
                  ),
                ),
                left: getWidth(141),
                top: getHeight(65),
              ),
              Positioned(
                child: Text(
                  'About Doctor',
                  style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                left: getWidth(25),
                top: getHeight(169),
              ),
              Positioned(
                child: Text(
                  'lorem integer golrr rgltk sorfn frgro rgot rtr \n'
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
              Positioned(
                child: Text(
                  'Upcoming Schedules',
                  style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                left: getWidth(25),
                top: getHeight(358),
              ),
              Positioned(child: Stack(
                children: [
                  Positioned(
                      child: Container(
                        height: getHeight(87),
                        width: getWidth(325),
                        decoration:
                        BoxDecoration(color: Color(0xFFFFEAD6),
                            borderRadius: BorderRadius.circular(getHeight(18))
                        ),
                      )),
                  Positioned(child: Container(
                    height: getHeight(57),
                    width: getWidth(55),
                    decoration: BoxDecoration(
                        color: Color(0xF3F15407),
                        borderRadius: BorderRadius.circular(getHeight(12))
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: getHeight(7),),
                          Text('12',
                            style: TextStyle(
                              color: Color(0xFFFFEAD6),
                              fontWeight: FontWeight.w900,
                              fontSize: getHeight(24),
                            ),),
                          Text('Jan',
                            style: TextStyle(
                              color: Color(0xFFFFEAD6),
                              fontWeight: FontWeight.w900,
                              fontSize: getHeight(14),
                            ),),
                        ],
                      ),
                    ),
                  ),
                  left: getWidth(15),
                  top: getHeight(15),),
                  Positioned(child: Text('Consultation',
                  style: TextStyle(
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),
                  ),
                  left: getWidth(89),
                  top: getHeight(23),),
                  Positioned(child: Text('Sunday  .   9am - 11am',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: getHeight(14),
                    color: Colors.blueGrey
                  ),
                  ),
                  left: getWidth(89),
                    top: getHeight(47),
                  )
                  
                ],
              ),
                left: getWidth(25),
                top: getHeight(402),
              ),

              Positioned(child: Row(children: [
                InkWell(child: SvgPicture.asset('assets/illustrations/phone 1.svg'),),
                SizedBox(width: getWidth(15),),
                InkWell(child: SvgPicture.asset('assets/illustrations/message-square 1.svg'),),
                SizedBox(width: getWidth(15),),
                InkWell(child: SvgPicture.asset('assets/illustrations/Layer 2.svg'),),


              ],),
              left: getWidth(142),
                top: getHeight(96),
              )

            ]),
            top: getHeight(249),
          ),

          
        ],
      ),
    );
  }
}
