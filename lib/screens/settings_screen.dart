import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
 @override
  _SettingsScreenState createState() => _SettingsScreenState();
}
 
class _SettingsScreenState extends State<SettingsScreen>{
    final LoadingCubit loadingCubit = LoadingCubit();
  bool notificationsEnabled = true; 
  bool darkModeEnabled = false; 

  @override
  Widget build(BuildContext context){
    return BaseScreen(
    buttonBeginning: IconButton(onPressed: (){loadingCubit.fetchDataAndNavigate(context);}, icon: Image.asset(Constants.backImgpath)) ,
    body: 
     ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Enable or disable notifications'),
            leading: const Icon(Icons.notifications),
            trailing: Switch(
              value: notificationsEnabled,  
              onChanged: (bool value) {
                setState((){
                  notificationsEnabled = value; 
                }); 
              },
            ),
          ),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
          ListTile(
            title: const Text('Dark Mode'),
            subtitle: const Text('Enable or disable dark mode'),
            leading: const Icon(Icons.brightness_6),
             trailing: Switch(
              value: darkModeEnabled,  
              onChanged: (bool value) {
                setState((){
                  darkModeEnabled = value; 
                }); 
              },
            ),
          ),
          ListTile(
            title: const Text('Language'),
            subtitle: const Text('Select your preferred language'),
            leading: const Icon(Icons.language),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
               
            },
          ),
          ListTile(
            title: const Text('Feedback'),
            subtitle: const Text('Send us your feedback'),
            leading: const Icon(Icons.feedback),
            onTap: () {
               
            },
          ),
        ],
      ),
     text: Constants.settings); 
  }
}

