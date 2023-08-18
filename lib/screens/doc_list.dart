import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocumentList extends StatelessWidget {
  DocumentList({super.key/*, required this.docls*/}); //to sem zakomentiral, ker nastavim tuki docls (dokler ne dobim lista iz serverja, ker ni se uspelo)
  //final List<ClaimDocumentsResponse> docls; // 
  final docls = [
    ClaimDocumentsResponse(
      id: '1',
      signatoryName: 'John Doe',
      signatoryAddress: '123 Main St',
      numberOfRejectedImages: 5,
      //status: 'Pending',
    ),
    ClaimDocumentsResponse(
      id: '2',
      signatoryName: 'Jane Smith',
      signatoryAddress: '456 Elm St',
      numberOfRejectedImages: 3,
      //status: 'Approved',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    print(docls);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Dobavnice', textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
            IconButton(onPressed: (){}, icon: Icon(Icons.create_new_folder)),
          ],
          ),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                // Handle search input
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: docls.length,
              itemBuilder: (ctx, index){
                final document = docls[index]; 
                return GestureDetector(
                  onTap: (){
                    print('you clicked on $index thing'); 
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          document.signatoryName ?? '',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        Text(
                          document.signatoryAddress ?? '',
                          style: const TextStyle(fontSize: 14)
                        ),
                        Text(
                          '${document.numberOfRejectedImages ?? '' }', //to nism zihr ker v xaml je numOfConfPackets/numOfPackets
                          style: const TextStyle(fontSize: 14),
                          ),
                        /*Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(document.status.toString(), //to tudi nism zihr ka ni string 
                            style: const TextStyle(fontSize: 14)) 
                          ],),*/
                      ],
                    ),
                  )
                );
              },
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Dobavnice'),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Scan'),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Settings'),
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
