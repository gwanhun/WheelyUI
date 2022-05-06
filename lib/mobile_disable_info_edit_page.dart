import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/input_mixin.dart';
import 'package:wheelyx_mobile/mobile_account_disable_info_edit.dart';
import 'package:wheelyx_mobile/mobile_button_widget.dart';
import 'package:wheelyx_mobile/mobile_dropdown_widget.dart';

class MobileEditDisableInfoPage extends StatefulWidget {
  const MobileEditDisableInfoPage({Key? key}) : super(key: key);

  @override
  State<MobileEditDisableInfoPage> createState() => _MobileSerialKeyPageState();
}

class _MobileSerialKeyPageState extends State<MobileEditDisableInfoPage>
    with InputMixin {
  late GlobalKey<FormState> _formKey;
  late MobileDisableInfoModel disableTypeModel;
  late MobileDisableInfoModel spinalCordTypeModel;
  late MobileDisableInfoModel handPowerModel;
  late MobileDisableInfoModel backBendModel;
  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    disableTypeModel = MobileDisableInfoModel(
        title: '장애 유형', value: 0, dataList: ['척수', '뇌병변', '기타']);
    spinalCordTypeModel = MobileDisableInfoModel(
        title: '척수 장애 유형', value: 0, dataList: ['경추', '흉추', '요추']);
    handPowerModel = MobileDisableInfoModel(
        title: '손아귀 힘 여부', value: 0, dataList: ['약함', '중간', '강함']);
    backBendModel = MobileDisableInfoModel(
        title: '허리 움직임 여부', value: 0, dataList: ['못 움직임', '조금 숙여짐', '많이 숙여짐']);
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
      body: Container(
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 320.w,
                  child: Column(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            spacerWidget(height: 10.h),
                            titleWidget('장애 정보 등록'),
                            spacerWidget(height: 90.h),
                            MobileDropdownWidget(
                                model: disableTypeModel,
                                boxName: '장애 유형',
                                userValue: '척수',
                                refresh: () {
                                  //setState(() {});
                                },
                                valueList: ['척수', '뇌병변', '기타']),
                            if (disableTypeModel.value == 0)
                              Column(
                                children: [
                                  spacerWidget(height: 20.h),
                                  MobileDropdownWidget(
                                    model: spinalCordTypeModel,
                                    boxName: '척수 장애 유형',
                                    userValue: '경추',
                                    valueList: ['경추', '흉추', '요추'],
                                    infoText: '*척수장애를 선택한 경우에만 선택 가능합니다.',
                                  ),
                                ],
                              ),
                            spacerWidget(height: 20.h),
                            MobileDropdownWidget(
                                model: handPowerModel,
                                boxName: '손아귀 힘 여부',
                                userValue: '약함',
                                valueList: ['약함', '중간', '강함']),
                            spacerWidget(height: 20.h),
                            MobileDropdownWidget(
                                model: backBendModel,
                                boxName: '허리 움직임 여부',
                                userValue: '못 움직임',
                                valueList: ['못 움직임', '조금 숙여짐', '많이 숙여짐']),
                            spacerWidget(height: 51.h),
                          ]),
                    ],
                  ),
                ),
                bottomWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding bottomWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
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
                MobileButtonWidget(
                  buttonText: '다음',
                  buttonTextColor: Colors.white,
                  buttonColor: Color(0xffff6c08),
                ),
              ],
            ),
          )),
    );
  }

  Container titleWidget(String title) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.h),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ));
  }

  // Container _serilakeyPageBody() {
  //   return Container(
  //       color: Colors.black,
  //       child: Center(
  //         child: Form(
  //           key: _formKey,
  //           child: SingleChildScrollView(
  //             child: Container(
  //               width: 320.w,
  //               child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                         margin: EdgeInsets.only(bottom: 20.h),
  //                         child: const Text(
  //                           '장애 정보 등록',
  //                           style: TextStyle(
  //                             fontSize: 30,
  //                             color: Colors.white,
  //                             fontWeight: FontWeight.normal,
  //                           ),
  //                         )),
  //                     SizedBox(
  //                       height: 5.h,
  //                     ),
  //                     spacerWidget(height: 85.h),
  //                     MobileDropdownWidget(
  //                         model: disableTypeModel,
  //                         boxName: '장애 유형',
  //                         userValue: '척수',
  //                         refresh: () {
  //                           //setState(() {});
  //                         },
  //                         valueList: ['척수', '뇌병변', '기타']),
  //                     if (disableTypeModel.value == 0)
  //                       Column(
  //                         children: [
  //                           spacerWidget(),
  //                           MobileDropdownWidget(
  //                             model: spinalCordTypeModel,
  //                             boxName: '척수 장애 유형',
  //                             userValue: '경추',
  //                             valueList: ['경추', '흉추', '요추'],
  //                             infoText: '*척수장애를 선택한 경우에만 선택 가능합니다.',
  //                           ),
  //                         ],
  //                       ),
  //                     spacerWidget(),
  //                     MobileDropdownWidget(
  //                         model: handPowerModel,
  //                         boxName: '손아귀 힘 여부',
  //                         userValue: '약함',
  //                         valueList: ['약함', '중간', '강함']),
  //                     spacerWidget(),
  //                     MobileDropdownWidget(
  //                         model: backBendModel,
  //                         boxName: '허리 움직임 여부',
  //                         userValue: '못 움직임',
  //                         valueList: ['못 움직임', '조금 숙여짐', '많이 숙여짐']),
  //                     spacerWidget(height: 110.h),
  //                   ]),
  //             ),
  //           ),
  //         ),
  //       ));
  // }

  Widget spacerWidget({double? height}) {
    return SizedBox(height: height);
  }
}
