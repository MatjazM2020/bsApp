import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/logic/cubit/document_list_cubit.dart';
import 'package:dobavnice_app/logic/cubit/loading_cubit.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/screens/base_screen.dart';

class DocumentList extends StatelessWidget {
  DocumentList({super.key, required this.docls});
  final List<ClaimDocumentsResponse> docls;
  
  String numberOfItems(){
     if(docls.length == 1){
          return '${docls.length} item';
      }else{
          return '${docls.length} items';
      }
  }
  
    final DocumentListCubit documentListCubit = DocumentListCubit();
     final LoadingCubit loadingCubit = LoadingCubit();
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
            if(index == 0){
              loadingCubit.fetchDataAndNavigate(context); 
            }else if (index == 1){
              router.go(Constants.scanPath);
            }else{
             router.go(Constants.settingsPath);
            }
         }
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(height: 1, color: Color.fromARGB(255, 137, 138, 138)),
          Row(
            children: [
              const SizedBox(width: 20),
              buildIconButton(Constants.signImgPath, 'Podpiši'),
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
                    onPressed: () {},
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
            color: Colors.grey[100], // Very light gray background color
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
                    onChanged: (value) {},
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
            child: ListView.builder(
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
                          TextButton(child: const Text('Show'), onPressed: (){documentListCubit.navigateToDocumentList();})
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
