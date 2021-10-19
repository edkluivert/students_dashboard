import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ClassProgress extends StatelessWidget{
  const ClassProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
       width: 336.w,
       height: 400.h,
       child: Stack(
         children: [
           Container(
             height: 304.h,
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20.r),

             ),
             child: Padding(
               padding: EdgeInsets.only( top: 20.h),
               child: Image.asset('assets/images/research.png', width: 300.w,height: 270.h,),
             ),
           ),
           Positioned(
             left: 247.w,
             top: 50.h,
             right: 130.w,
             child: WebsafeSvg.asset('assets/icons/bookmark.svg',width: 61.w, height: 61.h),
           ),
           Positioned(
              top: 252.h,
             left: 25.w,
           //  right: 10.w,
             child: SizedBox(
               width: 250.w,
               height: 150.h,
               child: Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.r),
                 ),
                 elevation: 10,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.only(left: 17.w, right: 20.w, top: 21.h, bottom:21.h ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UX Research - Week 3",
                              style: TextStyle(
                                  fontFamily: fontName,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: headlineColor
                              ),
                            ),
                            SizedBox(height: 3.h,),
                            Text(
                              "CERTIFICATE UX/UI design",
                              style: TextStyle(
                                  fontFamily: fontName,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  color: sidebarTextColor
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            SizedBox(
                              child: SizedBox(
                                width: 100.w,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    WebsafeSvg.asset('assets/icons/time.svg',),
                                    SizedBox(height: 5.h,),
                                    Text("In Progress", style: TextStyle(
                                      color: const Color(0xFFFF2C55),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: fontName,
                                      fontSize: 14.sp,
                                      fontStyle: FontStyle.italic
                                    ),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 45.h,
                              width: 50.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "08 APRIL",
                                    style: TextStyle(
                                      fontFamily: fontName,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        color: sidebarTextColor
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h,),
                            Text(
                              "Join Now",
                              style: TextStyle(
                                fontFamily: fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: primaryColor
                              ),
                            ),
                          ],
                        )
                      ],
                   ),
                 ),
               ),
             ),
           )
         ],
       ),
     );
  }

}