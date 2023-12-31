import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_detail_get_packets_cubit.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/screens/base_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* INFO:
  This is the main screen. The list in the middle, is the list of doucuments that have not been signed yet. 
*/


  class DocumentList extends StatelessWidget {
    const DocumentList({super.key, required this.docls}); //we pass an additional argument to the constructor, which are the unsigned documents 
    final List<ClaimDocumentsResponse> docls;


  String numberOfItems() { //function to return the number of unsigned documents
    if (docls.length == 1) {
      return '${docls.length} item';
    } else {
      return '${docls.length} items';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      text: 'Dobavnice',
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Constants.homeImgPath)),
              label: 'Dobavnice',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(Constants.scanImgPath)),
                label: 'Scan'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(Constants.settingsImgPath)),
                label: 'Nastavitve')
          ],
          onTap: (int index) {
            if (index == 0) {
              context.read<LoadingCubit>().fetchDataAndNavigate(context);
            } else if (index == 1) {
              router.go(Constants.scanPath);
            } else {
              router.go(Constants.settingsPath);
            }
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(height: 1, color: Color.fromARGB(255, 137, 138, 138)),
          Row(
            children: [
              const SizedBox(width: 20),
              IconButton(icon: Image.asset(Constants.signImgPath), onPressed: (){router.go(Constants.signaturePath);},) //from this button we access the signature screen
            ],
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.grey),
                  bottom: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              children: [
                const Text(
                  'Heading',
                  style: TextStyle(
                    color: Color(0xff489FE8),
                    fontFamily: Constants.semiBold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, //TODO 
                    icon: Image.asset(Constants.hamburgerPath)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 251, 254),
            ),
            child: Center(
              child: Text(
                numberOfItems(),
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
          Container(
            height: 15.0,
            color: Colors.grey[100], 
          ),
          Divider(height: 1, color: Colors.blueGrey[100]),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: const Color.fromARGB(255, 243, 242, 242)),
            child: Row(
              children: [
                Expanded(  
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search...',
                    ),
                    onChanged: (value) {}, //TODO
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(Constants.magnifyingGlassPath),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.blueGrey[100]),
          Expanded(
            child: ListView.builder( // this is the list of documents that have not been signed yet 
              itemCount: docls.length,
              itemBuilder: (ctx, index) {
                final document = docls[index];
                return GestureDetector(
                    onTap: () {},
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(document.signatoryName ?? '',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(document.signatoryAddress ?? '',
                              style: const TextStyle(fontSize: 14)),
                          Text(
                            '${document.numberOfRejectedImages ?? ''}', 
                            style: const TextStyle(fontSize: 14),
                          ),
                          TextButton(
                              child: const Text('Show'),
                              onPressed: () async{
                                await context.read<DocumentDetailGetPacketsCubit>().getSigningDocuments(document.id);  //updating the state of documentDetailGetPacketsCubit according to the document.id 
                                router.go(Constants.documentDetailViewPath); //navigating to the documentDetailView screen 
                             }
                           )
                        ],
                      ),
                    )
                 );
              },
            ),
          ),
        ],
      ),
    );
  }
}