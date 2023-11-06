import 'package:flutter/material.dart';
import 'package:shode/core/app_export.dart';
import 'package:shode/widgets/app_bar/appbar_image.dart';
import 'package:shode/widgets/app_bar/appbar_title.dart';
import 'package:shode/widgets/app_bar/custom_app_bar.dart';

class OrderDetailViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(78),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 18),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "My Orders")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 12, bottom: 12),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui50x50,
                                    height: getSize(66),
                                    width: getSize(66),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3)),
                                    margin: getMargin(
                                        left: 12, top: 12, bottom: 12)),
                                Padding(
                                    padding: getPadding(
                                        left: 16,
                                        top: 21,
                                        right: 16,
                                        bottom: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 13),
                                                    child: Text(
                                                        "Logo printed T-shirt",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold18Bluegray900)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    margin: getMargin(
                                                        left: 97, top: 11))
                                              ]),
                                          Text("Arriving Wednesday",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtGilroyMedium14)
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui66x661,
                                    height: getSize(66),
                                    width: getSize(66),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Container(
                                    width: getHorizontalSize(164),
                                    margin:
                                        getMargin(left: 16, top: 9, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Logo printed T-shirt",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text(
                                                  "Delivered 02, May 2022",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Green600))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 21, right: 4, bottom: 21))
                              ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui66x662,
                                    height: getSize(66),
                                    width: getSize(66),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Container(
                                    width: getHorizontalSize(164),
                                    margin:
                                        getMargin(left: 16, top: 9, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Logo printed T-shirt",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("Cancelled",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Red700))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 21, right: 4, bottom: 21))
                              ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui66x663,
                                    height: getSize(66),
                                    width: getSize(66),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Container(
                                    width: getHorizontalSize(164),
                                    margin:
                                        getMargin(left: 16, top: 9, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Logo printed T-shirt",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text(
                                                  "Delivered 02, May 2022",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Green600))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 21, right: 4, bottom: 21))
                              ])),
                      Container(
                          margin: getMargin(top: 16, bottom: 5),
                          padding: getPadding(all: 12),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui66x661,
                                    height: getSize(66),
                                    width: getSize(66),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Container(
                                    width: getHorizontalSize(164),
                                    margin:
                                        getMargin(left: 16, top: 9, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Logo printed T-shirt",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemiBold18Bluegray900),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text(
                                                  "Delivered 02, May 2022",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Green600))
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(
                                        top: 21, right: 4, bottom: 21))
                              ]))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
