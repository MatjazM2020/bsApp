import 'package:chopper/chopper.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DocumentDetailView extends StatefulWidget {
  const DocumentDetailView({super.key});
  @override
  State<DocumentDetailView> createState() {
    return _DocumentDetailViewState();
  }
}

class _DocumentDetailViewState extends State<DocumentDetailView> {
  final LoadingCubit loadingCubit = LoadingCubit();
  final DocumentDetailGetPacketsCubit documentDetailGetPacketsCubit = DocumentDetailGetPacketsCubit(); 
  Future<List<GetDocumentsResponse>?>? x; 
  @override
  void initState() {
    super.initState();
    documentDetailGetPacketsCubit.getSigningDocuments(); 
  }
  
  @override
  Widget build(BuildContext context){
    return  BaseScreen(
      text: 'ŠtevilkaDobavnice TODO', 
      buttonBeginning: IconButton(onPressed: (){loadingCubit.fetchDataAndNavigate(context);}, icon: Image.asset(Constants.backImgpath)),
      body: BlocBuilder<DocumentDetailGetPacketsCubit, List<GetDocumentsResponse>>(
        builder:(context, documentList){
          if(documentList.isEmpty){
            return Center(child: CircularProgressIndicator());
          }else{
            return ListView.builder(
              itemCount: documentList.length,
              itemBuilder: (ctx, index){
                final document = documentList[index]; 
                return GestureDetector(
                  onTap: (){},
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
                    )
                  )
                ); 
              }
            
            ); 
          }
        },
        ) 


        );
    }
}




