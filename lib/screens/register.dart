import 'package:dobavnice_app/api/apiRepository.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:uuid/uuid.dart';


final dobavnicaApi = DobavnicaApi.create(
  baseUrl: Uri.parse('https://devapp.flowbase.com'),
);

DateTime currentTime = DateTime.now();

String key = Uuid().v4();

final List<String> inputTexts = [
  'Name',
  'Surname',
  'Phone',
  'VatNo',
  'Vehicle Number',
  'Email',
];

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State<Register> {
  List<String> _inputValues = List.filled(inputTexts.length, '');
  List<TextEditingController> _controllers =
      List.generate(inputTexts.length, (_) => TextEditingController());


   void showPopupError(BuildContext context, String errorMessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Error'),
              content: Text(errorMessage),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('ok'),
                ),
              ]);
        });
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
                  itemCount: inputTexts.length,
                  itemBuilder: (ctx, index) => TextFormField(
                    controller: _controllers[index],
                    decoration: InputDecoration(
                      labelText: inputTexts[index],
                    ),
                    onEditingComplete: () {
                      if (index < inputTexts.length - 1) {
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
    //*********DATA***************************************
    for (int i = 0; i < _inputValues.length; i++) {
      _inputValues[i] = _controllers[i].text;
    }
print('daah');
    CreateTransportHandlerModel x = CreateTransportHandlerModel(
        name: _inputValues[0],
        surname: _inputValues[1],
        phone: _inputValues[2],
        vatNo: _inputValues[3],
        vehicleNumber: _inputValues[4],
        email: _inputValues[5],
        deviceId: key);

    final ac = ApiCalls(); 
    ac.performApiCalls(x, context);
  }
}
