import '../discounts_offers_screen/widgets/listvectorsixtyone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shode/core/app_export.dart';
import 'package:shode/widgets/app_bar/appbar_image.dart';
import 'package:shode/widgets/app_bar/appbar_title.dart';
import 'package:shode/widgets/app_bar/custom_app_bar.dart';

class DiscountsOffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 11),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Offers For You")),
            body: Padding(
                padding: getPadding(left: 16, top: 25, right: 16),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListvectorsixtyoneItemWidget();
                    }))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
