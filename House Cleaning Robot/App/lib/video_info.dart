import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:complex_flutter_ui/colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("assets/video_info.json")
        .then((value) {
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          color.AppColor.gradientFirst.withOpacity(0.8),
          color.AppColor.gradientSecond.withOpacity(0.9)
        ], begin: const FractionalOffset(0.0, 0.4), end: Alignment.topRight)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: color.AppColor.secondPageTopIconColor,
                          )),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: color.AppColor.secondPageTopIconColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Robot",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Cleaning History",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  color.AppColor
                                      .secondPageContainerGradient1stColor,
                                  color.AppColor
                                      .secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.secondPageIconColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "105 min",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 230,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  color.AppColor
                                      .secondPageContainerGradient1stColor,
                                  color.AppColor
                                      .secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: color.AppColor.secondPageIconColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "0 Maintainance & issues",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: color.AppColor.secondPageIconColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Month : April 2023",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.circuitsColor),
                      ),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(
                            Icons.loop,
                            size: 28,
                            color: color.AppColor.loopColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "refresh",
                            style: TextStyle(
                                fontSize: 15, color: color.AppColor.setsColor),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Divider(
                    height: 1,
                    thickness: 6,
                    color: color.AppColor.secondPageContainerGradient1stColor
                        .withOpacity(0.1),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: ListView(
                          children: [
                            //1Done
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 50,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Hallroom",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "25-4-23,17:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //2Done
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Bedroom",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "26-4-23,7:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //3Done
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Kitchen",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "24-4-23,14:35,10min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //4done mountain
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Free Space",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "22-4-23,20:35,5min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //5DOneGlutes
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Hall Room",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "21-4-23,17:35,9min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //6Donesquatjumps
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Bedroom",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "21-4-23,10:35,20min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //7Donesumo squats
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Free Space",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "19-4-23,17:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //8Donejumps
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Hallroom",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "18-4-23,12:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //9DoneSide bar
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Free Space",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "15-4-23,9:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                            //10DoneSquats
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      child: Transform.scale(
                                        scale: 0.9,
                                        child: ColorFiltered(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.dstATop),
                                          child: Image.asset('assets/robo.png'),
                                        ),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Hall Room",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "10-4-23,19:35,15min",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                              thickness: 3,
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
