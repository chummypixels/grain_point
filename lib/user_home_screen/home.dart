import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grain_point/screens/register_farmers/register_farmer_screen.dart';
import 'package:grain_point/user_home_screen/models/frame_one_item_model.dart';
import 'package:grain_point/user_home_screen/widgets/frame_one_widget.dart';
import 'package:grain_point/utils/image_constants.dart';
import 'package:grain_point/utils/math_utils.dart';

import '../theme/appstyle.dart';
import '../utils/color_constants.dart';
import 'controller/user_home_screen_controller.dart';

class UserHomeScreen extends GetWidget<UserHomeScreenController> {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getHorizontalSize(double px) {
      return px * ((MediaQuery.of(context).size.width) / 390);
    }

    double getVerticalSize(double px) {
      num statusBar = MediaQuery.of(context).viewPadding.top;
      num screenHeight = (MediaQuery.of(context).size.height) - statusBar;
      return px * (screenHeight / 844);
    }

    double getFontSize(double px) {
      var height = getVerticalSize(px);
      var width = getHorizontalSize(px);
      if (height < width) {
        return height.toInt().toDouble();
      } else {
        return width.toInt().toDouble();
      }
    }

    double getSize(double px) {
      var height = getVerticalSize(px);
      var width = getHorizontalSize(px);
      if (height < width) {
        return height.toInt().toDouble();
      } else {
        return width.toInt().toDouble();
      }
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.gray_100,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: ColorConstant.gray_100),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    top: getVerticalSize(44),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(24),
                      right: getHorizontalSize(24),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: getHorizontalSize(20),
                              ),
                              child: Text('4th August',
                                  textAlign: TextAlign.left,
                                  style: AppStyle.textStylePoppinsregular14_1
                                      .copyWith(
                                          fontSize: getFontSize(16),
                                          letterSpacing: 0.800000011920929,
                                          height: 1.8571428571428572)),
                            ),
                            Text(
                              'Hi Ifeoluwa,',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: ColorConstant.bluegray_900,
                                  fontSize: getFontSize(24),
                                  fontWeight: FontWeight.bold,
                                  height: 1.4),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(185),
                              top: getVerticalSize(7),
                              bottom: getVerticalSize(7)),
                          child: Image.asset(
                            ImageConstant.img_frame13078_4,
                            height: getSize(40),
                            width: getSize(40),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(28),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          child: Container(
                            height: getVerticalSize(108),
                            width: getHorizontalSize(584),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(24),
                            ),
                            child: Obx(
                              () => ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.userHomeScreenModelObj
                                    .value.frameOneItemList.length,
                                itemBuilder: (context, index) {
                                  FrameOneItemModel model = controller
                                      .userHomeScreenModelObj
                                      .value
                                      .frameOneItemList[index];
                                  return FrameOneWidget(model);
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(24),
                                top: getVerticalSize(15),
                                right: getHorizontalSize(24),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorConstant.white_A700,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(16)),
                                        border: Border.all(
                                          color: ColorConstant.bluegray_100,
                                          width: getHorizontalSize(0.5),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: ColorConstant.black_900_0d,
                                              spreadRadius:
                                                  getHorizontalSize(2),
                                              blurRadius: getHorizontalSize(2),
                                              offset: Offset(0, 2))
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset(
                                              ImageConstant.img_frame13142_6,
                                              height: getVerticalSize(89),
                                              width: getHorizontalSize(163.5),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(15),
                                                top: getVerticalSize(16),
                                                right: getHorizontalSize(13),
                                                bottom: getVerticalSize(21),
                                              ),
                                              child: Text(
                                                'Farm Gate Prices',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textStylePoppinsmedium14
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(14),
                                                        letterSpacing: 0.8),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(15),
                                      ),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.white_A700,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(16),
                                          ),
                                          border: Border.all(
                                            color: ColorConstant.bluegray_100,
                                            width: getHorizontalSize(0.5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                color:
                                                    ColorConstant.black_900_0d,
                                                spreadRadius:
                                                    getHorizontalSize(2),
                                                blurRadius:
                                                    getHorizontalSize(2),
                                                offset: Offset(0, 2))
                                          ]),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: GestureDetector(
                                              onTap: () {
                                                onTapRegisterFarmer();
                                              },
                                              child: SizedBox(
                                                height: getVerticalSize(89),
                                                width: getHorizontalSize(161),
                                                child: SvgPicture.asset(
                                                  ImageConstant
                                                      .img_frame13143_6,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(15),
                                              top: getVerticalSize(16),
                                              right: getHorizontalSize(13),
                                              bottom: getVerticalSize(21),
                                            ),
                                            child: Text(
                                              'Register Farmer',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .textStylePoppinsmedium14
                                                  .copyWith(
                                                      fontSize: getFontSize(14),
                                                      letterSpacing: 0.8),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }

  onTapFarmGatePrices() {}

  onTapRegisterFarmer() {
    Get.to(RegisterFarmerScreen());
  }
}
