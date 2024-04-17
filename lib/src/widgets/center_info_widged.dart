import 'package:catbreeds/config/constant/assets_constant.dart';
import 'package:catbreeds/config/constant/color_constant.dart';
import 'package:catbreeds/config/constant/string_constant.dart';
import 'package:catbreeds/config/constant/values_constant.dart';
import 'package:flutter/material.dart';

class CenterInfoWidget extends StatelessWidget {
  const CenterInfoWidget({super.key, this.imageInfo = imageNoWifi});
  final String imageInfo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('$pathManagementImages$imageInfo'),
          ),
          const Text(sentencesNoInternet,
              style: TextStyle(
                fontFamily: fontFamilyMontserrat,
                color: blackColorTheme,
                fontWeight: FontWeight.bold,
                fontSize: h3Size,
              ))
        ],
      ),
    );
  }
}