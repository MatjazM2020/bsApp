import 'package:dobavnice_app/api/authInceptor.dart';
import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocumentList extends StatelessWidget {
  DocumentList(
      {super.key , required this.docls}); 
  final List<ClaimDocumentsResponse> docls;  
 

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Dobavnice',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dobavnice'),
        BottomNavigationBarItem(icon: Icon(Icons.fit_screen_sharp), label: 'Scan'),
        BottomNavigationBarItem(icon:Icon(Icons.settings), label: 'Nastavitve')
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.visibility)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.create_new_folder)),
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
              itemBuilder: (ctx, index) {
                final document = docls[index];
                return GestureDetector(
                    onTap: () {
                    },
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
