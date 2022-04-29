import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileSignupPage extends StatefulWidget {
  const MobileSignupPage({Key? key}) : super(key: key);

  @override
  State<MobileSignupPage> createState() => _MobileSignupPageState();
}

class _MobileSignupPageState extends State<MobileSignupPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            toolbarHeight: 0.08.sh,
            elevation: 0.0, //하단줄 (언더라인) 제거
            centerTitle: true,
            title: Padding(
                padding: EdgeInsets.only(right: 240.w), child: Text('뒤로가기')),
            leadingWidth: 0.06.sw,
            leading: IconButton(
                onPressed: () {
                  // dismissRemainingBottomBar();
                  //Get.back();
                },
                icon: Icon(Icons.arrow_back_ios_new, size: 0.05.sh))),
        body: _signupPageBody());
  }
}

Container _signupPageBody() {
  return Container();
}
