import 'package:flutter/material.dart';
import 'package:shode/core/app_export.dart';

// ignore: must_be_immutable
class PaymentsItemWidget extends StatelessWidget {
  PaymentsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            172,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sent to Angelyn Weiner  ",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium16,
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "29 Jan, 06:32 pm",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 11,
            bottom: 16,
          ),
          child: Text(
            "20",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroyMedium16,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgUpload,
          height: getSize(
            16,
          ),
          width: getSize(
            16,
          ),
          margin: getMargin(
            left: 4,
            top: 13,
            bottom: 16,
          ),
        ),
      ],
    );
  }
}
