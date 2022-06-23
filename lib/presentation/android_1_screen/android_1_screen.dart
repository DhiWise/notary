import 'controller/android_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notaryyy/core/app_export.dart';

class Android1Screen extends GetWidget<Android1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(620.00),
                                  width: size.width,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(10.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(20.00),
                                      bottom: getVerticalSize(20.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.gray9000c,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 5))
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
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        16.00),
                                                    right: getHorizontalSize(
                                                        16.00),
                                                    bottom:
                                                        getVerticalSize(22.00)),
                                                child: Text("lbl_notary".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotomedium32
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    32)))))
                                      ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(112.00),
                                      top: getVerticalSize(250.00),
                                      right: getHorizontalSize(112.00),
                                      bottom: getVerticalSize(250.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(100.00),
                                                    width: getHorizontalSize(
                                                        105.08),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgGroup2,
                                                        fit: BoxFit.fill)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(20.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Text(
                                                    "msg_note_it_away".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotomedium16
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    16)))))
                                      ])))
                        ]))))));
  }
}
