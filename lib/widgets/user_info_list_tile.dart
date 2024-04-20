import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_flutter/Models/user_info_list_tile_model.dart';
import 'package:responsive_dashboard_flutter/utils/app_images.dart';
import 'package:responsive_dashboard_flutter/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoListTileModel});
  final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0XFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoListTileModel.imagePath),
        title: Text(userInfoListTileModel.title,
            style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(userInfoListTileModel.subTitle,
            style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
