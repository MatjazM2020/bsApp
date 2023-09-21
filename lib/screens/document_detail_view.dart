import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/logic/cubit/packet_detail_cubit.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/screens/base_screen.dart';



class DocumentDetailView extends StatefulWidget {
  const DocumentDetailView({super.key, this.id});
  final String? id;
  @override
  State<DocumentDetailView> createState() {
    return _DocumentDetailViewState();
  }
}

class _DocumentDetailViewState extends State<DocumentDetailView> {
  @override
  Widget build(BuildContext context) {
    final loadingCubit = context.read<LoadingCubit>();
    final documentDetailCubit = context.read<DocumentDetailGetPacketsCubit>();
    final document = documentDetailCubit.state; //this is the document which we will be considering in this page
    final packetDetailCubit = context.read<PacketDetailCubit>();
    final packetInfo = packetDetailCubit.state;

    
    return BaseScreen(
      text: 'ŠtevilkaDobavnice TODO',
      buttonBeginning: IconButton(
        onPressed: () {
          loadingCubit.fetchDataAndNavigate(context);
        },
        icon: Image.asset(Constants.backImgpath),
      ),
      body: document.resources!.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
            children: [
              Expanded(child: ListView.builder(
                  itemCount: document.resources!.length, 
                  itemBuilder: (ctx, index) {
                    final doc = document.resources![index];
                    return GestureDetector(
                      onTap: () async {
                        try {
                          await context.read<PacketDetailCubit>().getPacketInfo(document.id, document.resources![index].id); //we update the cubits state 
                          router.go(Constants.packetDetailViewPath); //navigate to the packetDetailViewPath
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(doc.signatoryName!),
                            Text(doc.signatoryAddress!),
                            Text(doc.signatoryPostCode!),
                            Text(doc.signatoryEmail!),
                            Text(doc.signatoryPhoneNo!),
                          ],
                        ),
                      ),
                    );
                  },
                ),),
                GestureDetector( //TODO ------ to use the sign widget screen for signing the document 
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue, 
                  height: 60, 
                  child: const Text(
                    'Sign',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 18, 
                    ),
                  ),
                )),
            ],
          ),
    );
  }
}

