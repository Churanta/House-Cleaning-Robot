import 'dart:convert';

import 'package:complex_flutter_ui/remotepage.dart';
import 'package:complex_flutter_ui/video_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("assets/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "RoboTech",
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "History",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(child: Container()),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: () {
                      Get.to(() => VideoInfo());
                    },
                    child: Row(
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageDetail),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: color.AppColor.homePageIcons,
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemotePage()),
                );
                // Function to call when the container is tapped
                print('Container tapped!');
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9)
                    ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(5, 10),
                          blurRadius: 20,
                          color: color.AppColor.gradientSecond.withOpacity(0.2))
                    ]),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "RoboTech",
                        style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Control Robot",
                        style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Manually fron here",
                        style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bluetooth_connected,
                                size: 20,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Bluetooth",
                                style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      color.AppColor.homePageContainerTextSmall,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RemotePage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: const Offset(4, 8),
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.play_circle_fill,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //Stack widget
            // Container(
            //   height: 180,

            //   width: MediaQuery.of(context).size.width,
            //   child: Stack(
            //     children: [
            //       Container(
            //         width: MediaQuery.of(context).size.width,
            //         margin: const EdgeInsets.only(top: 30),
            //         height: 190,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           image: DecorationImage(
            //             image: AssetImage(
            //               "assets/runners.jpg"
            //             ),
            //             fit: BoxFit.fill
            //           )
            //         ),
            //       ),
            //       Positioned(
            //         top: -20,
            //         left: -120,
            //         child: Container(
            //           height: 180,
            //           width: MediaQuery.of(context).size.width,
            //           margin:EdgeInsets.only(top: 20,right: 150 ),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                   image: AssetImage(
            //                       "assets/womanrun-01.png"
            //                   ),

            //               )
            //           ),
            //         ),
            //       ),
            //       Container(
            //         width: double.maxFinite,
            //         height: 100,
            //         //color: Colors.redAccent.withOpacity(0.3),
            //         margin:  EdgeInsets.only(left: 155, top: 65),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("You are doing great",
            //             style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white
            //             ),),
            //             SizedBox(height: 10,),
            //             RichText(text: TextSpan(
            //               text: "Keep it up\n",
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500
            //               ), children: [
            //                 TextSpan(
            //                   text: "stick to your plan"
            //                 )
            //             ]
            //             ))
            //           ],
            //         ),
            //       ),

            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Floor Cleaning Areas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildCard(name: 'Hall Room'),
                            _buildCard(name: 'Bedroom'),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildCard(name: 'Kitchen'),
                            _buildCard(name: 'Free Space'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required String name}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 10.0,
      color: Colors.white,
      shadowColor: Color(0xFF6985e8),
      child: Container(
        height: 180.0,
        width: 180.0,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/home.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  color: Color(0xFF6985e8),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
