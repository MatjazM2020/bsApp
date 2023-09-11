import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
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
    final documentList = documentDetailCubit.state; 

    return BaseScreen(
      text: 'ŠtevilkaDobavnice TODO',
      buttonBeginning: IconButton(
        onPressed: () {
          loadingCubit.fetchDataAndNavigate(context);
        },
        icon: Image.asset(Constants.backImgpath),
      ),
      body: documentList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: documentList.length,
              itemBuilder: (ctx, index) {
                final document = documentList[index];
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(document.signatoryName!),
                        Text(document.signatoryAddress!),
                        Text(document.signatoryPostCode!),
                        Text(document.signatoryEmail!),
                        Text(document.signatoryPhoneNo!),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

