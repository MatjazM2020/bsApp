
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';

IconButton buildIconButton(String imagePath, String buttonText) {
  return IconButton(
    onPressed: () {},
    icon: Column(
      children: [
        Image.asset(imagePath),
        const SizedBox(
          height: 1,
        ),
        Text(
          buttonText,
          style: const TextStyle(fontSize: 9, fontFamily: Constants.semiBold),
        )
      ],
    ),
  );
}

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key,required this.body, this.bottomNavigationBar, this.buttonBeginning,});
  final Widget body; 
  final BottomNavigationBar ?bottomNavigationBar;
  final IconButton ?buttonBeginning; 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: buttonBeginning,
        title: const Text('Dobavnice', 
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: bottomNavigationBar,
      body: body,
    );
  }
}





