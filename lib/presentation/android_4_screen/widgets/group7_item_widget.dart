import '../controller/android_4_controller.dart';
import '../models/group7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:notaryyy/core/app_export.dart';

// ignore: must_be_immutable
class Group7ItemWidget extends StatelessWidget {
  Group7ItemWidget(this.group7ItemModelObj);

  Group7ItemModel group7ItemModelObj;

  var controller = Get.find<Android4Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: EdgeInsets.all(20),
        width: getHorizontalSize(
          155.00,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              15.00,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black90019,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: getHorizontalSize(
                125.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  20.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Obx(
                () => Text(
                  group7ItemModelObj.readsomearticTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstylerobotomedium161.copyWith(
                    fontSize: getFontSize(
                      16,
                    ),
                    height: 1.50,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                125.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  20.00,
                ),
              ),
              child: Obx(
                () => Text(
                  group7ItemModelObj.iFinishedtodaTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstyletimesnewromanpsmt12.copyWith(
                    fontSize: getFontSize(
                      12,
                    ),
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
