import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_dashboard/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: sidebarTextColor,
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               color: Colors.white,
               width: double.infinity,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(left: 30.w),
                         child: const Icon(Icons.search,color: headlineColor,size: 30,),
                       ),
                       SizedBox(width: 10.h,),
                       SizedBox(
                         width : 255.w,
                         child: buildSearchFormField(),
                       ),
                     ],
                   ),
                    Row(
                      children: [
                        Text("|", style: TextStyle(
                           color : const Color(0xFF8695A0).withOpacity(0.9),
                           fontWeight: FontWeight.w400,
                           fontSize: 40.sp
                   ),),
                        SizedBox(width: 50.w,),
                        WebsafeSvg.asset('assets/icons/message.svg',width: 65.w, height: 65.h),
                        SizedBox(width: 10.w,),
                        WebsafeSvg.asset('assets/icons/notification.svg',width: 65.w, height: 65.h),
                        SizedBox(width: 10.w,),
                        SizedBox(
                          width: 95.w,
                          child: Row(
                            children: [
                              Image.asset('assets/images/avatar.png', width: 45.w,height: 45.h,),
                              Column(
                                children:  [
                                  Text("Mia V",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp,
                                      color: Colors.black54
                                  ),),
                                  SizedBox(height: 5.h,),
                                  Text("Student",style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Colors.black54
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        WebsafeSvg.asset('assets/icons/bubble.svg',width: 5.w, height: 16.h),
                        SizedBox(width: 10.w,),
                      ],
                    ),

                 ],
               ),
             )
           ],
         ),
       )
     );
  }

  TextFormField buildSearchFormField() {
    return TextFormField(
      //obscureText: true,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color : Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 24.sp
      ),
      // controller: _controller.emailController,
      // onSaved: (value) {
      //   _controller.email = value!;
      // },
      // validator: (value) {
      //   return _controller.validateEmail(value!);
      // },
      decoration:  InputDecoration(
        border: const OutlineInputBorder(
            //borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none

        ),
        // labelText: "Confirm Password",
        filled: true,
        fillColor: Colors.white,
        hintText: "Search course, student or instructor",
        hintStyle: TextStyle(
            color : Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

}