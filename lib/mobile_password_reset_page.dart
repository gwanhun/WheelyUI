import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheelyx_mobile/input_mixin.dart';

class MobilePasswordResetPage extends StatefulWidget {
  static final String routeName = '/MobilePasswordFindPage';

  const MobilePasswordResetPage({Key? key}) : super(key: key);

  @override
  State<MobilePasswordResetPage> createState() =>
      _MobilePasswordResetPageState();
}

class _MobilePasswordResetPageState extends State<MobilePasswordResetPage>
    with InputMixin {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailTextController;
  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
      body: _passwordResetBody(),
    );
  }

  Container _passwordResetBody() {
    return Container(
        color: Colors.black,
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Container(
              width: 317.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      child: const Text(
                        '이런, 비밀번호를 잊으셨나요?',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    //margin: EdgeInsets.only(bottom: 20.h),
                    child: const Text(
                      '알려주신 이메일 주소로',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(bottom: 20.h),
                    child: Text(
                      '비밀번호 재설정 방법을 보내드릴게요!',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 70.h),
                  Container(
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      //controller: _emailTextController,
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
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  SizedBox(
                    // 428
                    // 300/428 * size.width
                    // 0.3.sw
                    width: 300.w,
                    height: 60.h,
                    child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => Container(
                                  child: Dialog(
                                    insetPadding: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    backgroundColor: Color(0xff343434),
                                    elevation: 0,
                                    child: Container(
                                      padding: EdgeInsets.all(0),
                                      width: 400.w,
                                      height: 580.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/error.svg",
                                            width: 70.w,
                                            height: 70.h,
                                            color: Color(0xffd4d4d4),
                                          ),
                                          SizedBox(height: 45.h),
                                          const Text(
                                            '비밀번호 초기화 실패',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 30.h),
                                          const Text(
                                            '이메일이 유효하지 않습니다.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 150.h),
                                          SizedBox(
                                            width: 300.w,
                                            height: 54.h,
                                            child: MaterialButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              color: Color(0xffff6c08),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              textColor: Colors.white,
                                              child: const Text(
                                                '확인',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                      },
                      color: Color(0xffff6c08),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('비밀번호 재설정 메일 보내기'),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}


/*비밀번호 초기화 완료 다이얼로그창
showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  backgroundColor: Color(0xff343434),
                                  elevation: 0,
                                  child: Container(
                                    width: 400.w,
                                    height: 580.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/check_icon.svg",
                                          width: 70.w,
                                          height: 70.h,
                                        ),
                                        SizedBox(height: 45.h),
                                        const Text(
                                          '메일이 발송되었습니다.',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 30.h),
                                        const Text(
                                          '입력하신 메일 주소를',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Text(
                                          '확인해주세요',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 150.h),
                                        SizedBox(
                                          width: 300.w,
                                          height: 54.h,
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            color: Color(0xffff6c08),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            textColor: Colors.white,
                                            child: const Text(
                                              '확인',
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )); */