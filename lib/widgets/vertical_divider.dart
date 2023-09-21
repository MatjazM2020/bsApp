import 'package:flutter/material.dart';
 
/* INFO: 
  custom widget- vertical divider
*/ 

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 24,
      color: Colors.grey,
    );
  }
}