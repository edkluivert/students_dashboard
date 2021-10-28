import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:students_dashboard/components/chat_item.dart';
import 'package:students_dashboard/components/story_item.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MessageScreen extends StatelessWidget{
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r)
      ),
       width: 350.w,
         height: 732.h,
         child: SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(
                 width: 347.w,
                 child: Row(
                   children: [
                     SizedBox(
                       height: 50.h,
                       width: 50.w,
                       child: Stack(
                         children: [
                           Padding(
                             padding: EdgeInsets.only(left: 10.w,top:5.h ),
                             child: CircleAvatar(
                               backgroundColor: bgColor,
                               backgroundImage: const AssetImage('assets/images/avatar.png'),
                               radius: 20.r,
                             ),
                           ),
                           Positioned(
                               top: 30.h,
                               left: 30.w,
                               child: Container(
                           decoration: const BoxDecoration(
                             color: Color(0xFF15BC10),
                             shape: BoxShape.circle
                           ),
                             width: 10.w,
                             height: 10.h,
                           ))
                         ],
                       ),
                     ),
                     SizedBox(width: 5.w,),
                     Text("Messaging", style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 15.sp,
                       color: dHeadLineColor
                     ),),
                     SizedBox(width: 35.w,),
                     IconButton(onPressed: (){}, icon:const Icon(Icons.search, color: bgColor,size: 20,) ),
                     SizedBox(width: 10.w,),
                     WebsafeSvg.asset('assets/icons/icon_edit.svg', width: 20.w, height: 20.h),
                     SizedBox(width: 15.w,),
                     WebsafeSvg.asset('assets/icons/3dots.svg', width: 20.w, height: 20.h),
                     SizedBox(width: 10.w,),
                     WebsafeSvg.asset('assets/icons/arrow_down.svg', width: 20.w, height: 20.h),
                     SizedBox(width: 15.w,),
                   ],
                 ),
               ),
               SizedBox(height: 40.h,),
               SizedBox(
                 width: 310.w,
                 height: 100.h,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     SizedBox(
                       width: 50.w,
                       height: 80.h,
                       child: Column(
                         children: [
                           Container(
                             width: 50.w,
                             height: 50.h,
                    decoration: BoxDecoration(
                            border: Border.all(
                              color: bgColor,

                            ),
                            shape: BoxShape.circle,
                      color: const Color(0xFF569854).withOpacity(0.10)
                    ),
                             child:  const Center(
                               child: Icon(Icons.add, size: 15, color: Color(0xFF545454),),
                             ),
                           ),
                           SizedBox(height: 5.h,),
                           Text("Add", style:  TextStyle(
                               fontFamily: fontName,
                               fontSize: 12.sp,
                               color: bgColor,
                               fontWeight: FontWeight.w400
                           ),)
                         ],
                       ),
                     ),
                     StoryItem(name : "James"),
                     StoryItem(name : "James"),
                   StoryItem(name : "James"),
               StoryItem(name : "James"),
                   ],
                 ),
               ),
               SizedBox(height: 30.h,),
               const ChatItem(),
               SizedBox(height: 10.h,),
               Padding(
                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
                 child: const Divider(
                   color: Color(0xFFeeeeee),
                   thickness:1

                 ),
               ),
               const ChatItem(),
               SizedBox(height: 10.h,),
               Padding(
                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
                 child: const Divider(
                     color: Color(0xFFeeeeee),
                     thickness:1

                 ),
               ),
               const ChatItem(),
               SizedBox(height: 10.h,),
               Padding(
                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
                 child: const Divider(
                     color: Color(0xFFeeeeee),
                     thickness:1

                 ),
               ),
               const ChatItem(),
               SizedBox(height: 10.h,),
               Padding(
                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
                 child: const Divider(
                     color: Color(0xFFeeeeee),
                     thickness:1

                 ),
               ),
               const ChatItem(),
               SizedBox(height: 10.h,),
               Padding(
                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
                 child: const Divider(
                     color: Color(0xFFeeeeee),
                     thickness:1

                 ),
               ),
             ],
           ),
         ),
     );
  }

}