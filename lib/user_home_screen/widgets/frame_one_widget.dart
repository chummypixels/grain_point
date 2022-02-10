import 'package:flutter/cupertino.dart';
import 'package:grain_point/utils/image_constants.dart';

import '../../utils/color_constants.dart';
import '../../utils/math_utils.dart';
import '../controller/user_home_screen_controller.dart';
import '../models/frame_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FrameOneWidget extends StatelessWidget {
  FrameOneWidget(this.frameOneItemModelObj, {Key? key}) : super(key: key);

  FrameOneItemModel frameOneItemModelObj;

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

    return Container(
      child: Container(
        width: getHorizontalSize(199.67),
        child: Container(
          margin: EdgeInsets.only(right: getHorizontalSize(15)),
          decoration: BoxDecoration(
              color: ColorConstant.teal_300,
              borderRadius: BorderRadius.circular(getHorizontalSize(16))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(11),
                  top: getVerticalSize(10),
                  right: getHorizontalSize(11),
                ),
                child: Container(
                  height: getSize(30),
                  width: getSize(30),
                  child: SvgPicture.asset(
                    ImageConstant.img_frame6815_7,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getHorizontalSize(11),
                    top: getVerticalSize(5),
                    right: getHorizontalSize(11),
                    bottom: getVerticalSize(10)),
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
                        "Total Farmers",
                        style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            letterSpacing: 1,
                            height: 1.5),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '105 Farmers',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              height: 1.5),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(5),
                            bottom: getVerticalSize(5),
                          ),
                          child: Container(
                            height: getVerticalSize(18),
                            width: getHorizontalSize(17),
                            child: SvgPicture.asset(
                              ImageConstant.img_frame13228_1,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
