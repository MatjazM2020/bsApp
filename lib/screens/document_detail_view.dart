//back button zgori levo index[0]
// heading text desno od tega  index[1]
// more button  index[2]

// umes so gumbi kot je na strani 3/13

//spodi je drugi row kjer je samo stevilo itemou

//<Span Text="{Binding NumberOfConfirmedPackets}" />
///<Span Text=" / " />
//<Span Text="{Binding NumberOfPackets}" />
//<Span Text=" " />
//<Span Text="{ext:Translate DocumentDetailViewLabelItems}" />

//pol je list teh packetou na tej dobavnici

import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/models/constants.dart';

class DocumentDetailView extends StatefulWidget {
  const DocumentDetailView({super.key});
  @override
  State<DocumentDetailView> createState() {
    return _DocumentDetailViewState();
  }
}

class _DocumentDetailViewState extends State<DocumentDetailView> {
  @override
  Widget build(BuildContext context) {
    return  BaseScreen(
      buttonBeginning: IconButton(onPressed: (){}, icon: Image.asset(Constants.backImgpath)),
      body: const Center(
        child: Text('data'),
      ),
    );
  }
}
