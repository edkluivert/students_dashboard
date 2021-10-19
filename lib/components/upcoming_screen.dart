import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class UpcomingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 425.w,
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
                  color: headlineColor,
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
                SizedBox(height: 31.h,),
                Text("Class", style: TextStyle(
                    fontFamily: fontName,
                    fontSize: 14.sp,
                    color: sidebarTextColor,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 130.h,),
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
          Row(
            children: [
              SizedBox(
                width: 51.w,
                height: 48.h,
                child: Text(
                  "Tomorrow 09 APRIL",
                  style: TextStyle(
                    fontFamily: fontName,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: sidebarTextColor
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
             SizedBox(
               width: 313.w,
               height: 57.h,
               child: Card(
                 color: Colors.white,
                 elevation: 10,
                 child: Row(
                   children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 11.h, bottom: 8.h),
                        child: SizedBox(
                          width: 192.w,
                          child: Column(
                            children: [
                               Text(
                                    "Database and Information Systems",
                                    style: TextStyle(
                                      fontFamily: fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: headlineColor
                                    ),
                                  ),
                                  Text(
                                    "Master of Computer Science",
                                    style:TextStyle(
                                      fontFamily: fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: sidebarTextColor
                                    ),
                                  ),
                            ],
                          ),
                        ),
                      ),
                     Padding(
                       padding: EdgeInsets.only(right: 17.w, top: 21.h, bottom: 21.h),
                       child: Container(
                         width: 75.w,
                         height: 15.h,
                         decoration: BoxDecoration(
                           color: sidebarTextColor,
                           borderRadius: BorderRadius.circular(20.r)
                         ),
                         child:    Text(
                           "8:30am-1:00pm",
                           style: TextStyle(
                               fontFamily: fontName,
                               fontWeight: FontWeight.w600,
                               fontSize: 9.sp,
                               color: headlineColor
                           ),
                         ),
                       ),
                     )

                   ],
                 ),
               ),
             )

            ],
          )
        ],
      ),
    );
  }

}