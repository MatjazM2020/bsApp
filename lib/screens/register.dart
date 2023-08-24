import 'package:dobavnice_app/core/apiRepository.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:uuid/uuid.dart';
import 'package:get_it/get_it.dart'; 


class Register extends StatefulWidget {
  const Register({super.key}); 
  @override
  State<Register> createState() {
    return _RegisterState();
  }
}


class _RegisterState extends State<Register> {
  final List<String> _inputValues = List.filled(Constants.inputTexts.length, '');
  final List<TextEditingController> _controllers = List.generate(Constants.inputTexts.length, (_) => TextEditingController());
  Uuid uuid = GetIt.instance<Uuid>(); 

   void showPopupError(BuildContext context, String errorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text('Error'),
              content: Text(errorMessage),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ),
                  child: const Text('ok'),
                ),
              ]
           );
        }
     );
  }


  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView.builder(
                  itemCount: Constants.inputTexts.length,
                  itemBuilder: (ctx, index) => TextFormField(
                    controller: _controllers[index],
                    decoration: InputDecoration(
                      labelText: Constants.inputTexts[index],
                    ),
                    onEditingComplete: () {
                      if (index < Constants.inputTexts.length - 1) {
                        FocusScope.of(context).nextFocus();
                      } else {
                        _submitForm();
                      }
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _submitForm();
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _submitForm() async {
    for (int i = 0; i < _inputValues.length; i++) {
      _inputValues[i] = _controllers[i].text;
    }
    CreateTransportHandlerModel x = CreateTransportHandlerModel(
        name: _inputValues[0],
        surname: _inputValues[1],
        phone: _inputValues[2],
        vatNo: _inputValues[3],
        vehicleNumber: _inputValues[4],
        email: _inputValues[5],
        deviceId: uuid.v4());
    final ac = ApiCalls(); 
    await ac.createNewHandlerPost(x, context);
  }
}