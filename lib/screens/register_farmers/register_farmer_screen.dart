import 'package:flutter/cupertino.dart';
import 'package:grain_point/routes/app_routes.dart';
import 'package:grain_point/user_home_screen/home.dart';

import 'controller/register_farmer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grain_point/app_export.dart';

class RegisterFarmerScreen extends StatefulWidget {
  @override
  State<RegisterFarmerScreen> createState() => _RegisterFarmerScreenState();
}

class _RegisterFarmerScreenState extends State<RegisterFarmerScreen> {
  TextEditingController textAreaController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.gray_100),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(
                            bottom: getVerticalSize(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(52),
                                width: getHorizontalSize(390),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray_100),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(24),
                                    right: getHorizontalSize(24),
                                  ),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: getSize(40),
                                          width: getSize(40),
                                          child: SvgPicture.asset(
                                            ImageConstant.img_frame6815,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(10),
                                          top: getVerticalSize(9),
                                          right: getHorizontalSize(10),
                                          bottom: getVerticalSize(9),
                                        ),
                                        child: Text(
                                          'Register Farmer',
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textStylePoppinssemibold14
                                              .copyWith(
                                                  fontSize: 14,
                                                  letterSpacing: 0.8),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(20)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(899),
                                            width: getHorizontalSize(390),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  22),
                                                          top: getVerticalSize(
                                                              10),
                                                          right:
                                                              getHorizontalSize(
                                                                  10),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Full name',
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textStylePoppinssemibold14
                                                                  .copyWith(
                                                                      fontSize:
                                                                          14,
                                                                      letterSpacing:
                                                                          0.8),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'e.g John Doe',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                          8),
                                                                ),
                                                                child: Text(
                                                                  'First name and Surname',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textStylePoppinsregular16_1
                                                                      .copyWith(
                                                                          fontSize:
                                                                              14,
                                                                          height:
                                                                              1.5),
                                                                )),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        10),
                                                                top:
                                                                    getVerticalSize(
                                                                        15),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10),
                                                              ),
                                                              child: Text(
                                                                'Phone Number',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textStylePoppinssemibold14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        letterSpacing:
                                                                            0.8),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'Phone number',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        10),
                                                                top:
                                                                    getVerticalSize(
                                                                        15),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10),
                                                              ),
                                                              child: Text(
                                                                'Residential Address',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textStylePoppinssemibold14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        letterSpacing:
                                                                            0.8),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'e.g 11, Constantine street',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        10),
                                                                top:
                                                                    getVerticalSize(
                                                                        15),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10),
                                                              ),
                                                              child: Text(
                                                                'Location',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textStylePoppinssemibold14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        letterSpacing:
                                                                            0.8),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'e.g Abule-Egba',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        10),
                                                                top:
                                                                    getVerticalSize(
                                                                        15),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10),
                                                              ),
                                                              child: Text(
                                                                'State',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textStylePoppinssemibold14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        letterSpacing:
                                                                            0.8),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    suffixIcon:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: getHorizontalSize(
                                                                            10),
                                                                        right: getHorizontalSize(
                                                                            15),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            getSize(40),
                                                                        width: getSize(
                                                                            42),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant.img_select_1),
                                                                      ),
                                                                    ),
                                                                    hintText:
                                                                        'Select from list',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        10),
                                                                top:
                                                                    getVerticalSize(
                                                                        15),
                                                                right:
                                                                    getHorizontalSize(
                                                                        10),
                                                              ),
                                                              child: Text(
                                                                'LGA',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textStylePoppinssemibold14
                                                                    .copyWith(
                                                                        fontSize:
                                                                            14,
                                                                        letterSpacing:
                                                                            0.8),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        8),
                                                              ),
                                                              child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        56),
                                                                width:
                                                                    getHorizontalSize(
                                                                        340),
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    suffixIcon:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: getHorizontalSize(
                                                                            10),
                                                                        right: getHorizontalSize(
                                                                            15),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            getSize(40),
                                                                        width: getSize(
                                                                            42),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant.img_select_1),
                                                                      ),
                                                                    ),
                                                                    hintText:
                                                                        'Select from list',
                                                                    hintStyle: AppStyle
                                                                        .textStylePoppinsregular16_1
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16,
                                                                            color:
                                                                                ColorConstant.gray_400),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(
                                                                              getHorizontalSize(16),
                                                                            ),
                                                                            borderSide: const BorderSide(color: Colors.transparent)),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(16)),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorConstant
                                                                            .white_A700,
                                                                    isDense:
                                                                        true,
                                                                    contentPadding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left: getHorizontalSize(
                                                                          16),
                                                                      top: getVerticalSize(
                                                                          20),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .gray_400,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  15),
                                                          top: getVerticalSize(
                                                              8),
                                                          right:
                                                              getHorizontalSize(
                                                                  15),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray_101,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                                16),
                                                          ),
                                                          border: Border.all(
                                                            color: ColorConstant
                                                                .black_900,
                                                            width:
                                                                getHorizontalSize(
                                                                    2),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      282),
                                                              margin: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          16),
                                                                  top:
                                                                      getVerticalSize(
                                                                          18),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          16)),
                                                              child: TextField(
                                                                controller:
                                                                    textAreaController,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                maxLines: 6,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  hintStyle: AppStyle
                                                                      .textStylePoppinsregular18
                                                                      .copyWith(
                                                                          fontSize:
                                                                              18,
                                                                          height:
                                                                              1.6),
                                                                  hintText:
                                                                      'This is a long string of text that will eventually wrap - good thing we have an input!',
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        2),
                                                                top:
                                                                    getVerticalSize(
                                                                        16),
                                                                right:
                                                                    getHorizontalSize(
                                                                        16),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        16),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        114),
                                                                width:
                                                                    getHorizontalSize(
                                                                        24),
                                                                child: SvgPicture.asset(
                                                                    ImageConstant
                                                                        .img_frame7020,
                                                                    fit: BoxFit
                                                                        .fill),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 20.0,
                                                                  right: 20.0),
                                                          child: Container(
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        12),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            12),
                                                              ),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      40,
                                                                      118,
                                                                      111,
                                                                      1),
                                                            ),
                                                            child:
                                                                ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                elevation: 0,
                                                                primary: const Color
                                                                        .fromRGBO(
                                                                    40,
                                                                    118,
                                                                    111,
                                                                    1),
                                                              ),
                                                              onPressed: () {
                                                                _showBottomModal(
                                                                    context);
                                                              },
                                                              child: const Text(
                                                                'Continue',
                                                                style: TextStyle(
                                                                    color:
                                                                        Color.fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            1),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        16,
                                                                    letterSpacing:
                                                                        0.800000011920929,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    height:
                                                                        1.75),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]))));
  }
}

void _showBottomModal(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return Container(
          decoration: BoxDecoration(
            color: ColorConstant.gray_101,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                getHorizontalSize(32),
              ),
              topRight: Radius.circular(getHorizontalSize(32)),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getHorizontalSize(15),
                ),
                child: Container(
                  height: getVerticalSize(30),
                  width: getHorizontalSize(390),
                  child: SvgPicture.asset(
                    ImageConstant.img_frame13114_1,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(10),
                  bottom: getVerticalSize(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(24),
                        right: getHorizontalSize(24),
                      ),
                      child: Image.asset(
                        ImageConstant.img_frame10_3,
                        height: getVerticalSize(114),
                        width: getHorizontalSize(342),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(24),
                        right: getHorizontalSize(24),
                        top: getVerticalSize(25),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(24),
                              right: getHorizontalSize(24),
                              top: getVerticalSize(5),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(19),
                                    right: getHorizontalSize(19),
                                  ),
                                  child: Text(
                                    'Farmer Added Succesfully',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textStylePoppinsregular14
                                        .copyWith(fontSize: 20, height: 1.4),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(304),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(19),
                                      top: getVerticalSize(12),
                                      right: getHorizontalSize(19)),
                                  child: Text(
                                    "The farmer has been registered into your Grain Point Outlet succesfully",
                                    textAlign: TextAlign.center,
                                    style: AppStyle.textStylePoppinsregular14
                                        .copyWith(
                                            fontSize: 14,
                                            letterSpacing: 0.8,
                                            height: 1.9),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                        border: Border.all(
                                            color:
                                                Color.fromRGBO(96, 125, 139, 1),
                                            width: 0.5),
                                        //color: Color.fromRGBO(40, 118, 111, 1),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary: Colors.white70,
                                        ),
                                        onPressed: () {
                                          _showBottomModal(context);
                                        },
                                        child: const Text(
                                          'View all farmers',
                                          style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              letterSpacing: 0.800000011920929,
                                              fontWeight: FontWeight.normal,
                                              height: 1.75),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                        color: Color.fromRGBO(40, 118, 111, 1),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary: const Color.fromRGBO(
                                              40, 118, 111, 1),
                                        ),
                                        onPressed: () {
                                          _showBottomModal(context);
                                        },
                                        child: const Text(
                                          'Return to homescreen',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              letterSpacing: 0.800000011920929,
                                              fontWeight: FontWeight.normal,
                                              height: 1.75),
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
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
