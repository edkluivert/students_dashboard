import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class StoryItem extends StatelessWidget{

  String name;

  StoryItem({Key? key,
    required this.name
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 80.h,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF327654),
              ),
              shape: BoxShape.circle
            ),
            width: 50.w,
            height: 50.h,
            child: Image.asset('assets/images/avatar.png', width: 30.w, height: 30.h,),
          ),
          SizedBox(height: 5.h,),
          Text(name, style:  TextStyle(
            fontFamily: fontName,
            fontSize: 12.sp,
            color: bgColor,
            fontWeight: FontWeight.w400
          ),)
        ],
      ),
    );
  }

}