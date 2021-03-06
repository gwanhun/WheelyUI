import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/input_mixin.dart';
import 'package:wheelyx_mobile/mobile_button_widget.dart';

class MobileEmailLoginPage extends StatefulWidget {
  static final String routeName = '/EmailLoginPage';
  const MobileEmailLoginPage({Key? key}) : super(key: key);

  @override
  _MobileEmailLoginPageState createState() => _MobileEmailLoginPageState();
}

class _MobileEmailLoginPageState extends State<MobileEmailLoginPage>
    with InputMixin {
  //  AlertMixin, DismissBottomBarErrorMixin {
  late GlobalKey<FormState> _formKey;
  // late AuthViewModel _authViewModel;
  late TextEditingController _emailTextController;
  late TextEditingController _pwTextController;
  // late AnalyticsViewModel _analyticsViewModel;
  String appVersion = '';

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    // _authViewModel = Get.find<AuthViewModel>();
    _emailTextController = TextEditingController();
    _pwTextController = TextEditingController();
    // _analyticsViewModel = Get.find<AnalyticsViewModel>();
    // analyticsInint();
    // packageInfoInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),

      body: Container(
          color: Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  width: 300.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/images/symbol_orange.png',
                          width: 0.45.sw,
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: _emailTextController,
                          decoration: textInputDecor('????????? ??????'),
                          style: Theme.of(context).textTheme.bodyText1,
                          // TextStyle(
                          //     color: Colors.white,
                          //     fontSize: AppBarNickNameFontSize),
                          validator: (text) {
                            if (text == null || text == "") {
                              return '????????? ???????????? ??????????????????.';
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          // onEditingComplete: () => login(),
                          controller: _pwTextController,
                          decoration: textInputDecor('????????????'),
                          style: Theme.of(context).textTheme.bodyText1,
                          validator: (text) {
                            if (text == null || text == "") {
                              return '??????????????? ??????????????????.';
                            }
                          },
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      MobileButtonWidget(
                        buttonText: '?????????',
                        buttonTextColor: Colors.white,
                        buttonColor: Color(0xffff6c08),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MobileButtonWidget(
                        buttonText: '????????????',
                        buttonTextColor: Colors.white,
                        buttonColor: Color.fromARGB(255, 36, 36, 36),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MobileButtonWidget(
                        buttonText: '???????????? ??????',
                        buttonTextColor: Colors.white,
                        buttonColor: Color.fromARGB(255, 36, 36, 36),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text("$appVersion",
                            style: TextStyle(
                                color: Color(0xff9A9CA5), fontSize: 24.sp)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      // floatingActionButton: _csCenterButton(context),
    );
  }
}
