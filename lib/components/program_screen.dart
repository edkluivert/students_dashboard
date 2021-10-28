import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:students_dashboard/components/upcoming_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import 'class_progress.dart';
import 'grades_item.dart';

class ProgramScreen extends StatelessWidget{
  const ProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SizedBox(
       width: 787.w,
       height: 800.h,
       child: Column(
         children: [
           Container(
             width: 787.w,
             height: 305.h,
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
                       padding: EdgeInsets.only(left: 25.w, top: 26.h),
                       child: Text("Active Programs", style: TextStyle(
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w500,
                         color: headlineColor,
                         fontFamily: fontName
                       ),),
                     ),
                     Padding(
                       padding: EdgeInsets.only(right: 25.w, top: 20.h),
                       child: WebsafeSvg.asset('assets/icons/3dots.svg', width: 22.w, height: 22.h),
                     )
                   ],
                 ),
                 SizedBox(height: 23.h,),
                 Padding(padding: EdgeInsets.only(left: 9.w, right: 25.h),
                 child: Row(
                   children: [
                     Image.asset('assets/images/placeholder_2.png',width: 68.w, height: 68.h,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           width : 176.w,
                           height: 22.h,
                           decoration: BoxDecoration(
                             color: primaryColor,
                             borderRadius: BorderRadius.circular(35.r)
                           ),
                           child: Center(
                             child: Text(
                               "MASTER OF COMPUTER SCIENCE",
                               style: TextStyle(
                                 fontFamily: fontName,
                                 fontWeight: FontWeight.w600,
                                 fontSize: 10.sp,
                                 color: Colors.white
                               ),
                             ),
                           ),
                         ),
                         SizedBox(height: 11.h,),
                         SizedBox(width: 259.w, height: 34.h,
                         child: Text(
                           "University of Upstate at Brookstone",
                           style: TextStyle(
                               fontFamily: fontName,
                               fontWeight: FontWeight.w600,
                               fontSize: 14.sp,
                               color: headlineColor
                           ),
                          ),
                         )
                       ],
                     ),
                     SizedBox(
                       width: 400.w,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           GradeItem(
                             grade: "1",
                             remark: "Overdue Assignments",
                           ),
                           GradeItem(
                             grade: "5",
                             remark: "Remaining Absenses",
                           ),
                           GradeItem(
                             grade: "A-",
                             remark: "AcademicAverage",
                           ),
                           SizedBox(
                               width: 51.w,
                               height: 71.h,
                               child: WebsafeSvg.asset('assets/icons/completion.svg'))
                         ],
                       ),
                     )
                   ],
                 ),
                 ),
                 Padding(padding: EdgeInsets.only(left: 9.w, right: 25.h),
                   child: Row(

                     children: [
                       Image.asset('assets/images/placeholder.png',width: 68.w, height: 68.h,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             width : 176.w,
                             height: 22.h,
                             decoration: BoxDecoration(
                                 color: primaryColor,
                                 borderRadius: BorderRadius.circular(35.r)
                             ),
                             child: Center(
                               child: Text(
                                 "CERTIFICATE UX/UI DESIGN",
                                 style: TextStyle(
                                     fontFamily: fontName,
                                     fontWeight: FontWeight.w600,
                                     fontSize: 10.sp,
                                     color: Colors.white
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(height: 11.h,),
                           SizedBox(width: 259.w, height: 34.h,
                             child: Text(
                               "Academy of Art and Technology at Dursburg",
                               style: TextStyle(
                                   fontFamily: fontName,
                                   fontWeight: FontWeight.w600,
                                   fontSize: 14.sp,
                                   color: headlineColor
                               ),
                             ),
                           )
                         ],
                       ),
                       SizedBox(
                         width: 400.w,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             GradeItem(
                               grade: "0",
                               remark: "Overdue Assignments",
                             ),
                             GradeItem(
                               grade: "6",
                               remark: "Remaining Absenses",
                             ),
                             GradeItem(
                               grade: "--",
                               remark: "AcademicAverage",
                             ),
                             SizedBox(
                                 width: 51.w,
                                 height: 71.h,
                                 child: WebsafeSvg.asset('assets/icons/completion_2.svg'))
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ],
             ) ,
           ),
           SizedBox(height: 26.h,),
           Row(
             children: [
             const ClassProgress(),
               UpcomingScreen(),
             ],
           )
         ],
       ),
     );
  }
  
}