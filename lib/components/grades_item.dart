import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class GradeItem extends StatelessWidget{

  String grade;
  String remark;

  GradeItem({Key? key, required this.grade, required this.remark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.w,
      height: 90.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            grade,
            style: GoogleFonts.museoModerno(
                fontWeight: FontWeight.w700,
                fontSize: 36.sp,
                color: sidebarTextColor
            ),
          ),
          SizedBox(height: 5.h,),
          Center(
            child: Text(
              remark,
              style: TextStyle(
                  fontFamily: fontName,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                  color: sidebarTextColor
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

}