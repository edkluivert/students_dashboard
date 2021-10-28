import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_dashboard/components/upcoming_items.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class UpcomingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 400.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.w,top: 26.h),
                child: Text("Upcoming Sessions", style: TextStyle(
                  fontFamily: fontName,
                  fontSize: 16.sp,
                  color: dHeadLineColor,
                  fontWeight: FontWeight.w500
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w,top: 24.h),
                child: WebsafeSvg.asset('assets/icons/3dots.svg', width: 22.w, height: 22.h),
              ),
            ],
          ),
          SizedBox(height: 28.h,),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                Text("Date", style: TextStyle(
                    fontFamily: fontName,
                    fontSize: 14.sp,
                    color: sidebarTextColor,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(width: 31.w,),
                Text("Class", style: TextStyle(
                    fontFamily: fontName,
                    fontSize: 14.sp,
                    color: sidebarTextColor,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(width: 180.w,),
                Text("Time", style: TextStyle(
                    fontFamily: fontName,
                    fontSize: 14.sp,
                    color: sidebarTextColor,
                    fontWeight: FontWeight.w500
                ),),
              ],
            ),
          ),
          SizedBox(height: 22.h,),
          UpComingItems(title: "Database and Information Systems" , message: "Master of Computer Science",
          day: "Tomorrow", time: "09",elevation: 5,
          ),
          SizedBox(height: 5.h,),
          UpComingItems(title: "Database and Information Systems" , message: "Master of Computer Science",
            day: "Wed", time: "10",elevation: 0,
          ),
          SizedBox(height: 5.h,),
          UpComingItems(title: "Database and Information Systems" , message: "Master of Computer Science",
            day: "Wed", time: "10",elevation: 0,
          ),
        ],
      ),
    );
  }

}