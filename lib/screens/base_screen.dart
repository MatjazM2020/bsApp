import 'package:dobavnice_app/flb_api/output/dobavnica_api.swagger.dart';
import 'package:dobavnice_app/models/constants.dart';
import 'package:dobavnice_app/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:dobavnice_app/widgets/vertical_divider.dart'; 



IconButton buildIconButton(String imagePath, String buttonText) {
  return IconButton(
    onPressed: () {},
    icon: Column(
      children: [
        Image.asset(imagePath),
        const SizedBox(
          height: 1,
        ),
        Text(
          buttonText,
          style: const TextStyle(fontSize: 9, fontFamily: Constants.semiBold),
        )
      ],
    ),
  );
}



class BaseScreen extends StatelessWidget{
  const BaseScreen({super.key, required this.docls});
  final List<ClaimDocumentsResponse> docls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Dobavnice',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
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
              // router.go(Constants.documentPath);
            } else if (index == 1) {
              router.go(Constants.scanPath);
            } else {
              // router.go(Constants.settingsPath); TODO
            }
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(height: 1, color: Color.fromARGB(255, 137, 138, 138)),
          Row(
            // za videt da je problem v slikah )
            children: [
              const SizedBox(width:20),
              Expanded(
                child: buildIconButton(Constants.signImgPath, 'Podpiši'),
              )
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
                '12 items',
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
                    onChanged: (value) {
                      // Handle search input
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Handle search action
                  },
                  icon: Image.asset(Constants.magnifyingGlassPath),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.blueGrey[100]),
        ],
      ),
    );
  }
}
