import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:students_dashboard/components/side_menu_item.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';




class SideMenu extends StatefulWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  _SideMenuState createState()=>_SideMenuState();

}

class _SideMenuState extends State<SideMenu>{
  @override
  Widget build(BuildContext context) {
   return Container(
     height: double.infinity,
     color: headlineColor,
     child: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(height: 36.h,),
           Image.asset('assets/images/logo.png',width: 178.w,height: 58.h,),
           SizedBox(height: 47.h,),
            Padding(
              padding:  EdgeInsets.only(left: 44.w),
              child: SizedBox(
         child: Row(
           children: [
               WebsafeSvg.asset('assets/icons/dashboard.svg',color: Colors.white, width: 23.w, height: 23.h),
             SizedBox(width: 10.w,),
             Text("Dashboard", style: TextStyle(
                   fontFamily: 'SFpro',
                   fontSize: 18.sp,
                   color: Colors.white,
                   fontWeight: FontWeight.w700
                  ),)
               ],
              ),
          ),
            ),
           SizedBox(height: 31.h,),
           SideMenuItem(iconSrc: 'assets/icons/courses.svg', title: "Courses"),
           SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/materials.svg', title: "Materials"),
            SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/schedule.svg', title: "Calender"),
            SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/certificate.svg', title: "Transcript"),
           SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/star.svg', title: "Grades"),
           SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/person_check.svg', title: "Attendance"),
           SizedBox(height: 36.h,),
           SideMenuItem(iconSrc: 'assets/icons/settings.svg', title: "Settings"),
           SizedBox(height: 99.h,),
           Image.asset('assets/images/banner.png', width: 176.w, height: 190.h,),
           SizedBox(height: 36.h,),
         ],
       ),
     ),
   );
  }



}