import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheelyx_mobile/input_mixin.dart';

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

  // void analyticsInint() async {
  //   _analyticsViewModel.setCurrentScreen(screenName: "Email Login Page");
  // }

  // void packageInfoInit() async {
  //   PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //   setState(() {
  //     appVersion = packageInfo.version;
  //   });
  // }

  // void login({FocusScopeNode? currentFocus}) async {
  //   dismissRemainingBottomBar();
  //   bool isValidate = _formKey.currentState?.validate() ?? false;
  //   if (isValidate) {
  //     currentFocus?.unfocus();
  //     await _authViewModel.emailSignIn(
  //         email: _emailTextController.text.trim(),
  //         password: _pwTextController.text);
  //   }
  // }

  // void moveToEmailSignUp() {
  //   Get.toNamed(EmailSignUpPage.routeName);
  // }

  // void moveToPasswordFind() {
  //   Get.toNamed(PasswordResetPage.routeName);
  // }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(428, 926));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff242424),
      //   elevation: 0,
      //   toolbarHeight: AppBarHeight,
      //   // title: Image.asset(
      //   //   WheeleXLogoScr,
      //   //   width: 0.06.sw,
      //   // ),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      //   leadingWidth: 0.06.sw,
      // ),
      body: _emailLoginBody(),
      // floatingActionButton: _csCenterButton(context),
    );
  }

  Container _emailLoginBody() {
    return Container(
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
                        decoration: textInputDecor('이메일 주소'),
                        style: Theme.of(context).textTheme.bodyText1,
                        // TextStyle(
                        //     color: Colors.white,
                        //     fontSize: AppBarNickNameFontSize),
                        validator: (text) {
                          if (text == null || text == "") {
                            return '올바른 이메일을 입력해주세요.';
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
                        decoration: textInputDecor('비밀번호'),
                        style: Theme.of(context).textTheme.bodyText1,
                        validator: (text) {
                          if (text == null || text == "") {
                            return '비밀번호를 입력해주세요.';
                          }
                        },
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    // Container(
                    //   width: 300.w,
                    //   height: 54.h,
                    //   //color: Colors.red,
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.circular(30)),
                    // ),
                    // // ListView.builder

                    SizedBox(
                      // 428
                      // 300/428 * size.width
                      // 0.3.sw
                      width: 300.w,
                      height: 54.h,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Color(0xffff6c08),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text('로그인'),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                        width: 300,
                        // width: 300.w,
                        height: 54.h,
                        child: MaterialButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 36, 36, 36),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('회원가입'))),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                        width: 300.w,
                        height: 54.h,
                        child: MaterialButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 36, 36, 36),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text('비밀번호 찾기'))),
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
        ));
  }
}

// FloatingActionButton _csCenterButton(BuildContext context) {
//   return FloatingActionButton(
//     onPressed: () => {
//       Get.to(WebViewerWidget(
//         url: 'https://getthis.notion.site/e25e719d44e04268be55f84348a5b844',
//       ))
//     },
//     backgroundColor: Theme.of(context).primaryColorLight,
//     heroTag: null,
//     child: Icon(Icons.email_outlined),
//   );
// }
