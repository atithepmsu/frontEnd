import 'package:flutter/material.dart';
import 'package:shode/core/app_export.dart';
import 'package:shode/widgets/app_bar/appbar_image.dart';
import 'package:shode/widgets/app_bar/appbar_title.dart';
import 'package:shode/widgets/app_bar/custom_app_bar.dart';
import 'package:shode/widgets/custom_button.dart';
import 'package:shode/widgets/custom_icon_button.dart';
import 'package:shode/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController weburlController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Edit Profile")),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 15, top: 25, right: 15, bottom: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getSize(150),
                                  width: getSize(150),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse5150x150,
                                            height: getSize(150),
                                            width: getSize(150),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(75)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 30,
                                            width: 30,
                                            margin: getMargin(top: 5, right: 2),
                                            variant:
                                                IconButtonVariant.FillBlueA700,
                                            shape:
                                                IconButtonShape.CircleBorder15,
                                            padding:
                                                IconButtonPadding.PaddingAll3,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgForward))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 1, top: 26),
                              child: Text("First Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group10198Controller,
                              hintText: "Michelle",
                              margin: getMargin(left: 1, top: 8)),
                          Padding(
                              padding: getPadding(left: 1, top: 19),
                              child: Text("Last Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: group10198OneController,
                              hintText: "Rock",
                              margin: getMargin(left: 1, top: 7)),
                          Padding(
                              padding: getPadding(left: 1, top: 18),
                              child: Text("Email ID",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray800)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: emailController,
                              hintText: "Michellerock@gmail.com",
                              margin: getMargin(left: 1, top: 8),
                              textInputType: TextInputType.emailAddress),
                          Padding(
                              padding: getPadding(left: 1, top: 18),
                              child: Text("Website",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray800)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: weburlController,
                              hintText: "michellerock.com",
                              margin: getMargin(left: 1, top: 8)),
                          Padding(
                              padding: getPadding(left: 1, top: 18),
                              child: Text("Mobile Number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray800)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: mobileNoController,
                              hintText: "+1 2323232323",
                              margin: getMargin(left: 1, top: 8),
                              textInputAction: TextInputAction.done),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "Save",
                              margin: getMargin(left: 2, top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
