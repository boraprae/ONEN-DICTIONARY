import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'ONEN DICT',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("ONEN DICT"),
            ),
            Container(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: NetworkImage(
                          'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
                      title: Text("Noppasin Nilsri\n 6231302009"),
                      subtitle: Text("Give me the LOVE"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: NetworkImage(
                          'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
                      title: Text("Siwakait Kanpattaranont \n 6231302015"),
                      subtitle: Text("มาฟังspotifyกุ!!!"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: NetworkImage(
                          'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
                      title: Text("Thachnok Thitu\n 6231302021"),
                      subtitle: Text("We will pass away together"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: NetworkImage(
                          'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
                      title: Text("Phornwanat Boonman\n 6231302012"),
                      subtitle: Text("คนคุยเยอะเค้าเรียกว่าประชุม"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: NetworkImage(
                          'https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
                      title: Text("Sahapol  Polyiam\n 6231302017"),
                      subtitle: Text("handsomeandcool"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
