
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class UpComingItems extends StatelessWidget{

  String title;
  String message;
  String time;
  String day;
  double elevation;

  UpComingItems({Key? key,
    required this.message, required this.title, required this.time, required this.day,
    required this.elevation
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Row(
        children: [
          SizedBox(
            width: 41.w,
            height: 48.h,
            child: Column(
              children: [
                Text(
                  day,
                  style: TextStyle(
                      fontFamily: fontName,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: headlineColor
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 3.h,),
                Text(
                  time,
                  style: TextStyle(
                      fontFamily: fontName,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: sidebarTextColor
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 2.h,),
                Text(
                  "APRIL",
                  style: TextStyle(
                      fontFamily: fontName,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: sidebarTextColor
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 313.w,
            height: 60.h,
            child: Card(
              color: Colors.white,
              elevation: elevation,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 11.h, bottom: 8.h),
                    child: SizedBox(
                      width: 192.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: fontName,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: dHeadLineColor
                            ),
                          ),
                          Text(
                            message,
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
                  Container(
                    width: 75.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                        color: sidebarTextColor.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(20.r)
                    ),
                    child:    Center(
                      child: Text(
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
      ),
    );
  }

}