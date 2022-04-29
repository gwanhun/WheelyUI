import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/input_mixin.dart';

class MobileSignupPage extends StatefulWidget {
  const MobileSignupPage({Key? key}) : super(key: key);

  @override
  State<MobileSignupPage> createState() => _MobileSignupPageState();
}

class _MobileSignupPageState extends State<MobileSignupPage> with InputMixin {
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

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
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0, //하단줄 (언더라인) 제거
          //shape: CircularNotchedRectangle(),
          child: Container(
            color: Colors.black,
            child: Container(
              width: 428.w,
              height: 97.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0)),
                color: Color(0xff242424),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300.w,
                      height: 54.h,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Color(0xffff6c08),
                        //color: Color.fromARGB(255, 255, 108, 8),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          '다음',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body: _signupPageBody());
  }

  Container _signupPageBody() {
    return Container(
        color: Colors.black,
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                width: 380.w,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          child: const Text(
                            '휠리엑스와 땀 흘릴 준비가 되셨나요?',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        //margin: EdgeInsets.only(bottom: 20.h),
                        child: const Text(
                          '운동을 결심한 당신이 누구인지 알려주세요!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                          width: 317.w,
                          child: Column(
                            children: [
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('닉네임'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('이름'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('전화번호'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('이메일 주소'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('비밀번호'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.done,
                                decoration: textInputDecor('비밀번호 확인'),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                            ],
                          ))
                    ]),
              ),
            ),
          ),
        ));
  }
}
