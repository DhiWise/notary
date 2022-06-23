import 'controller/android_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notaryyy/core/app_export.dart';
import 'package:notaryyy/supabase/models/task_model.dart';

class Android2Screen extends GetWidget<Android2Controller> {
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
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(10.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00),
                                                top: getVerticalSize(100.00),
                                                right:
                                                    getHorizontalSize(15.00)),
                                            child: Container(
                                                height: getVerticalSize(23.00),
                                                width: getHorizontalSize(41.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .titleController,
                                                    decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                        hintText:
                                                            "lbl_title".tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotobold20
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        20.0),
                                                                color: ColorConstant
                                                                    .black900),
                                                        isDense: true),
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black90087,
                                                        fontSize:
                                                            getFontSize(20.0),
                                                        fontFamily: 'Roboto',
                                                        fontWeight: FontWeight.w700)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(15.00),
                                                top: getVerticalSize(24.00),
                                                right: getHorizontalSize(15.00),
                                                bottom: getVerticalSize(20.00)),
                                            child: Container(
                                                height: getVerticalSize(19.00),
                                                width: getHorizontalSize(81.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .descriptionController,
                                                    decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                        hintText: "lbl_description"
                                                            .tr,
                                                        hintStyle: AppStyle
                                                            .textstylerobotomedium161
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        16.0),
                                                                color: ColorConstant
                                                                    .black900),
                                                        isDense: true),
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black90087,
                                                        fontSize:
                                                            getFontSize(16.0),
                                                        fontFamily: 'Roboto',
                                                        fontWeight: FontWeight.w500))))
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  width: size.width,
                                  margin: EdgeInsets.only(
                                      bottom: getVerticalSize(10.00)),
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
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapImgVector();
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getVerticalSize(
                                                              6.41),
                                                          bottom:
                                                              getVerticalSize(
                                                                  6.41)),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  15.18),
                                                          width:
                                                              getHorizontalSize(
                                                                  15.58),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgVector,
                                                                  fit: BoxFit
                                                                      .fill)))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          19.00)),
                                                  child: Text("lbl_add".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstylerobotomedium24
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      24))))
                                            ]),
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgVector1();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(2.01),
                                                    right:
                                                        getHorizontalSize(0.00),
                                                    bottom:
                                                        getVerticalSize(7.41)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(12.58),
                                                    width: getHorizontalSize(
                                                        16.76),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgVector1,
                                                        fit: BoxFit.fill))))
                                      ])))
                        ]))))));
  }

  onTapImgVector() {
    Get.toNamed(AppRoutes.android4Screen);
  }

  onTapImgVector1() async {
    var taskModelReq = TaskModel(
      taskName: controller.titleController.text.toString(),
      desc: controller.descriptionController.text.toString(),
    );
    controller.createTaskDocument(
      reqParams: taskModelReq.toJson(),
    );
  }
}
