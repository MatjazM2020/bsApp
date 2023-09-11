import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class Sign extends StatelessWidget {
  Sign({super.key});
  LoadingCubit loadingCubit = LoadingCubit(); 
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  Widget build(context) {
    return BaseScreen(
        body: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 125,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Podpis: ',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.black, width: 2.0)),
                ),
                child: Signature(
                  controller: _controller,
                  width: double.infinity,
                  height: 350,
                  backgroundColor: Colors.white,
                ),
              ), 
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    TextButton(onPressed: (){_controller.clear();}, child: const Text('Počisti '))
                ],
              ),
            
            ],
          ),
        ),
        text: 'Elektronski podpis ', 
        buttonBeginning: IconButton(icon: Image.asset(Constants.backImgpath),onPressed: (){loadingCubit.fetchDataAndNavigate(context);},));
  }
}
