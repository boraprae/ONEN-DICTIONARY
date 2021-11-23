import 'package:flutter/material.dart';
import 'package:onen/constantColor.dart';

class Dictionary extends StatefulWidget {
  const Dictionary({Key? key}) : super(key: key);

  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 24, 0),
            child: IconButton(
              onPressed: () {
                print('Exit');
              },
              icon: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 0, 0),
          child: Row(
            children: [
              const Text(
                'ONEN',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: blueSky,
                ),
              ),
              const Text(
                ' DICT',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: 'Search word or phrase',
                      hintStyle: TextStyle(fontSize: 12.0, color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
