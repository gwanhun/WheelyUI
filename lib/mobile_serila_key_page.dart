import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/input_mixin.dart';

class MobileSerialKeyPage extends StatefulWidget {
  const MobileSerialKeyPage({Key? key}) : super(key: key);

  @override
  State<MobileSerialKeyPage> createState() => _MobileSerialKeyPageState();
}

class _MobileSerialKeyPageState extends State<MobileSerialKeyPage>
    with InputMixin {
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
                        textColor: Colors.white,
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
        body: _serilakeyPageBody());
  }

  Container _serilakeyPageBody() {
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
                            '시리얼 번호를 입력해 주세요',
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
                          '센서박스에 부착된 라벨에서',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        //margin: EdgeInsets.only(bottom: 20.h),
                        child: const Text(
                          '휠리엑스의 시리얼 넘버를 확인해 주세요',
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
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: 'xxx-xxx',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1.0)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1.0))),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                validator: (text) {
                                  if (text == null) {}
                                },
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 75.h,
                              ),
                              SizedBox(
                                width: 300.w,
                                height: 54.h,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xff242424),
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    '고객 센터',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
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
