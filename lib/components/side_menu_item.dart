import 'package:flutter/material.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideMenuItem extends StatelessWidget {

  String iconSrc;
  String title;

  SideMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 44.w),
          child: Row(
            children: [
              WebsafeSvg.asset(iconSrc,color: sidebarTextColor, width: 23.w, height: 23.h),
               SizedBox(width: 14.w,),
              Text(title, style:  TextStyle(
                fontFamily: 'SFpro',
                fontSize: 16.sp,
                color: sidebarTextColor,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ),
      ),
    );
  }

}


