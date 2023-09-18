import 'package:dobavnice_app/logic/cubit/packet_detail_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class PacketDetailview extends StatefulWidget {
  const PacketDetailview({super.key}); 
  @override
  State<StatefulWidget> createState() {
    return _PacketDetailviewState(); 
  }
}

class _PacketDetailviewState extends State<PacketDetailview>{
@override
  Widget build(context) {
    final packetDetailCubit = context.read<PacketDetailCubit>();
    final packetInfo = packetDetailCubit.state; 
 
    return BaseScreen(
      buttonBeginning: IconButton(onPressed: (){router.go(Constants.documentDetailViewPath);}, icon: Image.asset(Constants.backImgpath)),
      body: Column(
        children:[
          ListTile(title: Text(packetInfo.signatoryName!),), 
          ListTile(title: Text(packetInfo.signatoryAddress!)),
          ListTile(title: Text(packetInfo.signatoryPostCode!)),
          ListTile(title: Text(packetInfo.signatoryCity!)),
          ListTile(title: Text(packetInfo.signatoryEmail!)),
          ListTile(title: Text(packetInfo.signatoryPhoneNo!))
        ],
      ),
      text: 'Informacije'); 
   }
}




  