import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:system_analysis_and_design_project/app/core/values/strings.dart';
import 'package:system_analysis_and_design_project/app/global_widgets/buttons.dart';
import 'package:system_analysis_and_design_project/app/modules/login/controller.dart';
import 'package:system_analysis_and_design_project/app/modules/username/controller.dart';
import 'package:system_analysis_and_design_project/app/routes/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UsernameController usernameController = Get.find();
    LoginController controller = Get.put(LoginController(usernameController.username));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: SvgPicture.asset('assets/svgs/title.svg'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                // padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(225, 225, 225, 0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/carbon_login.svg'),
                        SizedBox(
                          width: 25,
                        ),
                        SvgPicture.asset('assets/svgs/login_signup.svg'),
                        SizedBox(
                          width: 25,
                        ),
                        SvgPicture.asset(
                          'assets/svgs/carbon_login.svg',
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      Strings.EMAIL_ADDRESS_REQUEST,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: SvgPicture.asset('assets/svgs/mail.svg'),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          width: 240,
                          height: 50,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              controller.username = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              // hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            inputFormatters: [
                              // LengthLimitingTextInputFormatter(32),
                            ],
                            initialValue: controller.username,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      height: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: SvgPicture.asset('assets/svgs/password.svg'),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          width: 240,
                          height: 50,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              controller.password = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            inputFormatters: [
                              // LengthLimitingTextInputFormatter(32),
                            ],
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      height: 1,
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomRight,
                        child: SadButton(
                          title: Strings.CONTINUE,
                          onTap: () {
                            //todo: change function
                            Get.toNamed(Routes.LOGIN);
                            controller.login();
                            // controller.checkUsername();
                          },
                          color: Color.fromRGBO(17, 80, 70, 1),
                          textColor: Colors.white,
                          width: 100,
                          height: 35,
                          borderRadius: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: SvgPicture.asset(
                  'assets/svgs/auth_page.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
