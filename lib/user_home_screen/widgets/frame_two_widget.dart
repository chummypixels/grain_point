import 'package:flutter/cupertino.dart';
import 'package:grain_point/utils/image_constants.dart';

import '../../utils/color_constants.dart';
import '../../utils/math_utils.dart';
import '../controller/user_home_screen_controller.dart';
import '../models/frame_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FrameTwoWidget extends StatelessWidget {
  FrameTwoWidget(this.frameOneItemModelObj, {Key? key}) : super(key: key);

  FrameTwoWidget frameOneItemModelObj;

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

    double getSize(double px) {
      var height = getVerticalSize(px);
      var width = getHorizontalSize(px);
      if (height < width) {
        return height.toInt().toDouble();
      } else {
        return width.toInt().toDouble();
      }
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

    return Scaffold(
      body: Container(
        child: Container(
          margin: EdgeInsets.only(
              top: getVerticalSize(1), bottom: getVerticalSize(1)),
          decoration: BoxDecoration(
              color: ColorConstant.white_A700,
              borderRadius: BorderRadius.circular(getHorizontalSize(16)),
              border: Border.all(
                  color: ColorConstant.bluegray_100,
                  width: getHorizontalSize(0.5))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(10),
                  top: getVerticalSize(8),
                  bottom: getVerticalSize(8),
                ),
                child: Container(
                  height: getVerticalSize(47),
                  width: getHorizontalSize(40),
                  child: SvgPicture.asset(
                    ImageConstant.img_frame13059,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getHorizontalSize(14),
                    top: getVerticalSize(8),
                    bottom: getVerticalSize(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(10),
                      ),
                      child: Text(
                        "Payment to Mr. Sunday",
                        style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 1,
                            height: 1.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(10),
                      ),
                      child: Text(
                        '350,000',
                        style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 1,
                            height: 1.5),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(14),
                  top: getVerticalSize(8),
                  right: getHorizontalSize(10),
                  bottom: getVerticalSize(8),
                ),
                child: Container(
                  height: getVerticalSize(47),
                  width: getHorizontalSize(40),
                  child: SvgPicture.asset(
                    ImageConstant.img_frame13061,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
