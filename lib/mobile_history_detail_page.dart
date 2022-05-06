import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/mobile_left_right_slider_widget.dart';

class MobileHistoryDetailPage extends StatefulWidget {
  const MobileHistoryDetailPage({Key? key}) : super(key: key);

  @override
  State<MobileHistoryDetailPage> createState() => _MobileHistoryDetailState();
}

class _MobileHistoryDetailState extends State<MobileHistoryDetailPage> {
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
                padding: EdgeInsets.only(right: 200.w), child: Text('뒤로가기')),
            leadingWidth: 0.06.sw,
            actions: <Widget>[
              new IconButton(
                icon:
                    new Icon(Icons.restore_from_trash_outlined, size: 0.05.sh),
                onPressed: () => {},
              ),
            ],
            leading: IconButton(
                onPressed: () {
                  // dismissRemainingBottomBar();
                  //Get.back();
                },
                icon: Icon(Icons.arrow_back_ios_new, size: 0.05.sh))),
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              // Center(
              SingleChildScrollView(
                child: Container(
                  width: 500.w,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: trainingTitle(),
                        ),
                        // SizedBox(
                        //   height: 5.h,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: historyDetailCard(''),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: historyDetailCard('1세트'),
                        ),
                      ]),
                ),
              ),
              // ),
            ],
          ),
        ));
  }

  Widget trainingTitle() {
    //시간, 타이틀 받아서 변경되도록할 예정
    return Container(
      width: 428.w,
      color: Color(0xff2a2a2a),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
            child: Text(
              '2022, 00. 00. 00시 00분',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
            child: Text(
              '트레이닝 이름',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget historyDetailCard(String title) {
    return Container(
      width: 428.w,
      color: Color(0xff2a2a2a),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ]),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
              child: Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '이동 거리',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '0,000.0 m',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      '최고 속력',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '00.0 km/h',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      '평균 페이스',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '00 " 00',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '운동 시간',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '00:00',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      '평균 속력',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '00.0 km/h',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      '소모 칼로리',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '000 Kcal',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        historyMaxSpeed()
      ]),
    );
  }

  Widget historyMaxSpeed() {
    return Container(
        width: 428.w,
        color: Color(0xff2a2a2a),
        child: Column(children: [
          SizedBox(height: 15.h),
          LeftRightWeightSliderWidget(
              leftWeight: 0.5, rightWeight: 0.5, width: 350),
          SizedBox(height: 15.h),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Column(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '외쪽 최대 속도',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '000.0 km/h',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        '외쪽 평균 속도',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '000.0 km/h',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
                child: Column(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '오른쪽 최대 속도',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '000.0 km/h',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        '오른쪽 평균 속도',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '000.0 km/h',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(height: 15.h),
        ]));
  }
}
