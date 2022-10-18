import 'package:doctor/Screens/profile/Profile_doctor.dart';
import 'package:doctor/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> categories=[
    {
      'image': 'assets/illustrations/Frame.svg',
      'title':'Dental \nSurgeon',

    },
    {
      'image':'assets/illustrations/Group1.svg',
      'title':'Heart \nSurgeon'

    },
    {
      'image':'assets/illustrations/Frame1.svg',
      'title': 'Eye \n specialiste',
    }
  ];
  List<Map<String,Color>> colors=[
    {
      'color': Color(0xFF4B7FFB),
    },
    {'color': Color(0xFFFFB167),
    },
    {
      'color':Color(0xFFEF716B),
    }


  ];




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getHeight(65),
            ),
          Padding(
            padding:  EdgeInsets.only(left:getWidth(28)),
            child: InkWell(

              child: Container(
                height:getHeight(35),
                width: getWidth(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(getHeight(10)),
                ),
                child: Center(child: SvgPicture.asset('assets/illustrations/menu bar.svg'),

                ),
              ),
            ),
          ),
            SizedBox(height: getHeight(64),),
            Padding(
              padding:  EdgeInsets.only(left: getWidth(25)),
              child: Text('Find Your Desired \nDoctor',
              style: TextStyle(
                fontSize: getHeight(30),
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              ),
            ),
            SizedBox(height: getHeight(19),),




            Padding(
              padding:  EdgeInsets.symmetric(horizontal:getWidth(25) ),
              child: TextFormField(

                style: TextStyle(
                  fontFamily: 'GTWalsheimPro',
                  fontWeight: FontWeight.w500,
                  fontSize: getHeight(20),
                  color: Colors.black,
                ),

                cursorColor: Color(0xFF9DA3B6),


                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF2F2F2),
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: getHeight(20),
                  horizontal: getWidth(20)),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 25),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )),
                  fillColor:Color(0xFF2F2F2),
                  filled: true,
                  hintText: 'Search for doctors',

                  hintStyle: TextStyle(
                    fontFamily: 'GTWalsheimPro',
                    fontSize: getHeight(16),
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF9DA3B6),
                  ),
                  suffixIcon:
                     InkWell(
                       child: Container(
                         width: getWidth(75),
                         height: getHeight(53),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(getHeight(20)),
                           color: Color(0xFFEF716B),
                         ),
                         child: Center(child: SvgPicture.asset('assets/illustrations/search-outline 1.svg')),
                       ),
                     ),

                  ),
                ),
              ),
            SizedBox(height: getHeight(25),),
            Padding(padding: EdgeInsets.only(left: getWidth(25)),
            child: Text('Categories',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getHeight(16),
              color: Colors.black,
            ),),
            ),
            SizedBox(height: getHeight(22),),
            Padding(padding: EdgeInsets.only(left: getWidth(25),),
    child:  SingleChildScrollView(

        child: Flexible(
          child: Container(
            height: getHeight(151),
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: getWidth(10),
                  );
                },
              scrollDirection: Axis.horizontal,
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) =>
            Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Positioned(child: Container(
                  height: getHeight(151),
                  width: getWidth(120),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(getHeight(15))
                  ),

                )),
                Positioned(child: Container(
                  height: getHeight(83),
                  width: getWidth(84),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getHeight(17)),
                    color: colors[index]['color'],
                  ),
                  child: Center(
                    child: SvgPicture.asset(categories[index]['image'].toString()),
                  ),
                ),
                left: getWidth(36),
                bottom: getHeight(68),),
                Positioned(child: Text(categories[index]['title'].toString(),
                style: TextStyle(
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),),
                left: getWidth(24),
                bottom: getHeight(16),)
              ],
            )
            ),
          ),
        ),
    )),
            SizedBox(height: getHeight(25),),
            Padding(
              padding:  EdgeInsets.only(left: getWidth(25)),
              child: Text('Top Doctors',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: getHeight(16),
                color: Colors.black,
              ),),
            ),
            SizedBox(height: getHeight(20),),
            Expanded(
              child: Padding(padding: EdgeInsets.only(left: getWidth(25),right: getWidth(25)),
                  child:  Flexible(
                  child: ListView.separated(

                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: getHeight(15),
                      );
                    },
                    scrollDirection: Axis.vertical,
                    itemCount: 13,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) =>
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileDoc())),
                      child: Stack(
                        children: [
                          Positioned(child:     Container(
                            height: getHeight(87),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getHeight(18)),
                              color: Colors.white,
                            ),
                          ),),

                          Positioned(child: Image.asset('assets/illustrations/5 1.png'),
                          left: getWidth(20),
                            top: getHeight(11),
                          ),
                          Positioned(child: Text('Dr. Stella Kane',
                          style: TextStyle(
                            fontSize: getHeight(16),
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          top: getHeight(19),
                            left: getWidth(88),
                          ),
                          Positioned(child: Text('Heart Surgeon - Flower Hospitals',
                            style: TextStyle(
                              fontSize: getHeight(14),
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                            top: getHeight(43),
                            left: getWidth(89),
                          )
                        ],
                      ),
                    )

    ))),
            )


          ],
        ),
      ),
    );
  }
}
