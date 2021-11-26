import 'package:flutter/material.dart';
import 'package:onen/constantColor.dart';
import 'package:onen/listWidget.dart';
import 'package:onen/shared/listWord.dart';
import 'package:onen/sqlite_helper.dart';

class Dictionary extends StatefulWidget {
  const Dictionary({Key? key}) : super(key: key);

  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  TextEditingController searchController = TextEditingController();
  final SQLiteHelper _helper = SQLiteHelper();
  List wordList = [];
  List<ListWord> listTiles = [];
  List savedDict = [];
  String eentry = '';
  String ecat = '';
  String tentry = '';
  String status = 'Loading....';

  @override
  void initState() {
    super.initState();
    //connect DB
    openDB();
  }

  void openDB() async {
    await _helper.openDB();
    getData();
  }

  void getData() async {
    wordList = await _helper.getData();
    savedDict = wordList;

    for (int i = 0; i < wordList.length; i++) {
      eentry = wordList[i]['eentry'];
      ecat = wordList[i]['ecat'] ?? "";
      tentry = wordList[i]['tentry'];

      listTiles.add(
        ListWord(eentry, ecat, tentry),
      );
    }
    // print(wordList);
    setState(() {});
  }

  void getSearchData() async {
    wordList = await _helper.searchDB(searchController.text);
    listTiles.clear();
    for (int i = 0; i < wordList.length; i++) {
      eentry = wordList[i]['eentry'];
      ecat = wordList[i]['ecat'] ?? "";
      tentry = wordList[i]['tentry'];

      listTiles.add(
        ListWord(eentry, ecat, tentry),
      );
    }

    setState(() {
      if (wordList.length == 0) {
        status = 'Not found';
      }
    });
  }

  void showSavedDict() {
    listTiles.clear();
    for (int i = 0; i < savedDict.length; i++) {
      eentry = savedDict[i]['eentry'];
      ecat = savedDict[i]['ecat'] ?? "";
      tentry = savedDict[i]['tentry'];

      listTiles.add(
        ListWord(eentry, ecat, tentry),
      );
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var word_listViews = ListView.builder(
        itemCount: listTiles.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: listWidget(listTiles[index], () {}),
          );
        });

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 50, 24, 0),
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
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      print('Exit');
                    },
                    icon: Icon(
                      Icons.exit_to_app_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
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
                  onChanged: (String str) {
                    if (searchController.text == '') {
                      setState(() {
                        wordList = savedDict;
                        showSavedDict();
                      });
                    } else {
                      getSearchData();
                    }
                  },
                ),
              ),
            ),
            wordList.length == 0
                ? Text(status)
                : Expanded(child: word_listViews)
          ],
        ),
      ),
    );
  }
}
