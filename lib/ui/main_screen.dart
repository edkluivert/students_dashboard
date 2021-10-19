import 'package:flutter/material.dart';
import 'package:students_dashboard/components/side_menu.dart';
import 'package:students_dashboard/constants.dart';
import 'package:students_dashboard/responsive.dart';
import 'package:students_dashboard/ui/main_section.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
 _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: sidebarTextColor,
      body: Responsive(
          mobile: const SideMenu(),
          tablet: Row(
            children:  [
              const Expanded(
                  flex: 5,
                  child:  SideMenu()),
              Expanded(
                  flex: 20,
                  child:  MainSection()
              ),

            ],
          ),
          desktop: Row(
            children: [
              const Expanded(
                  flex: 4,
                  child:  SideMenu()),
              Expanded(
                  flex: 15,
                  child:   MainSection()
              ),
              Expanded(
                  flex: 5,
                  child:  Container(
                    color: primaryColor,
                  )
              ),
            ],
          )),
    );
  }


}