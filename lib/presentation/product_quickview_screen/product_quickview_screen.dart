import 'package:flutter/material.dart';
import 'package:shode/core/app_export.dart';
import 'package:shode/widgets/custom_button.dart';

class ProductQuickviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(274),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(182),
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blue50,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(6)),
                                                bottomRight: Radius.circular(
                                                    getHorizontalSize(6)))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 94, right: 94),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage,
                                                  height: getVerticalSize(219),
                                                  width:
                                                      getHorizontalSize(240)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSwipe,
                                                  height: getVerticalSize(5),
                                                  width: getHorizontalSize(33),
                                                  margin: getMargin(top: 24))
                                            ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 32, right: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Green Apple",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyBold28),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(30),
                                        width: getSize(30),
                                        margin: getMargin(bottom: 4),
                                        onTap: () {
                                          onTapImgGoogle(context);
                                        }),
                                    Padding(
                                        padding:
                                            getPadding(left: 15, bottom: 5),
                                        child: Text("1",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium24)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFacebook,
                                        height: getSize(30),
                                        width: getSize(30),
                                        margin: getMargin(left: 16, bottom: 4),
                                        onTap: () {
                                          onTapImgFacebook(context);
                                        })
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 13),
                          child: Text("Special price",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium20)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 17, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("2",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyBold32),
                                    Padding(
                                        padding: getPadding(top: 7, bottom: 7),
                                        child: Text("(42% off)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium20))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 37),
                          child: Text("Description",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold20)),
                      Container(
                          width: getHorizontalSize(372),
                          margin: getMargin(left: 16, top: 12, right: 39),
                          child: Text(
                              "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyRegular16Bluegray400)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Add To Cart",
                          margin: getMargin(
                              left: 16, top: 24, right: 16, bottom: 5),
                          alignment: Alignment.center)
                    ]))));
  }

  onTapImgGoogle(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
