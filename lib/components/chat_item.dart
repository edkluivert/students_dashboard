import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class ChatItem extends StatelessWidget{
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
       width: 347.w,
       height: 70.h,
       color: Colors.white,
       child: Row(
         children: [
           Padding(
             padding: EdgeInsets.only(left: 10.w),
             child: CircleAvatar(
               backgroundColor: bgColor,
               backgroundImage: const AssetImage('assets/images/avatar.png'),
               radius: 30.r,
             ),
           ),
           SizedBox(
             width: 240.w,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10.w, top: 10.h),
                   child: SizedBox(
                     height: 50.h,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("James", style:  TextStyle(
                             fontFamily: fontName,
                             fontSize: 13.sp,
                             color: dHeadLineColor,
                             fontWeight: FontWeight.w600
                         ),),
                         SizedBox(height: 7.h,),
                         Text("Thanks, Mia. Please let me know when I can...", style:  TextStyle(
                             fontFamily: fontName,
                             fontSize: 13.sp,
                             color: dHeadLineColor,
                             fontWeight: FontWeight.w600
                         ),)
                       ],
                     ),
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.only(right: 10.w),
                   child: SizedBox(
                     height: 50.h,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("3 min", style:  TextStyle(
                             fontFamily: fontName,
                             fontSize: 10.sp,
                             color: sidebarTextColor,
                             fontWeight: FontWeight.w600
                         ),),
                         Container(
                           width: 20.w,
                           height: 20.h,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: primaryColor
                           ),
                           child: Center(
                             child: Text("1", style:  TextStyle(
                                 fontFamily: fontName,
                                 fontSize: 10.sp,
                                 color: Colors.white,
                                 fontWeight: FontWeight.w600
                             ),),
                           ),
                         )
                       ],
                     ),
                   ),
                 )
               ],
             ),
           )
         ],
       ),
     );
  }

}