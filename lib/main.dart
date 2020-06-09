import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'UAS Mobile',
    initialRoute: '/',
    routes: {
      '/': (context) =>TabBarDemo(),
      '/page1': (context) =>Page1(),
      '/tabbar': (context) =>TabBarDemo(),
    },
  ));
}

class MyApp extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOOΠΔ'),
          backgroundColor: Colors.black87,
        ),
        body: Column(
            children: <Widget>[
              Image.network('https://www.allkpop.com/upload/2020/01/content/270011/1580101882-20200127-loona.jpg'),
              Text(
                'Aplikasi untuk Orbit',
                style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/page1');
                    },
                    child: Text(
                      'Page 1',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black87,
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/tabbar');
                    },
                    child: Text(
                      'click me!',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black87,
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOOΠΔ'),
          backgroundColor: Colors.black87,
        ),
        body: CustomScrollView(
          slivers: <Widget>[],
        ),
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text('Home')),
                Tab(icon: Text('About')),
                Tab(icon: Text('Kontak')),
              ],
            ),
            title: Text('LOOΠΔ'),
            backgroundColor: Colors.black87,
          ),
          body: TabBarView(
            children: [
              Column(
                children: <Widget>[
                  Image.network('https://www.allkpop.com/upload/2020/01/content/270011/1580101882-20200127-loona.jpg'),
                  Text(
                      '''
                      Aplikasi Buatan 
                      Filippo Arnoldi 
                      20165520017
                      ''',
                    style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Tentang',
                    style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
                    textAlign : TextAlign.left,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Card(
                          child: Column (
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                    'LOONA (LOOΠΔ – 이달의 소녀) contains of 12 members: Haseul, Vivi, Yves, JinSoul, Kim Lip, Chuu, Heejin, Hyunjin, Go Won, Choerry, Olivia Hye and Yeojin. The band is under Blockberry Creative. They debuted on August 20, 2018 with their title track “Hi High”.'
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Kontak',
                    style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
                    textAlign : TextAlign.left,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Card(
                          child: Column (
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    children: <Widget>[
                                      Text('LOONA Official Accounts:'),
                                      Text('Facebook: loonatheworld'),
                                      Text('Twitter: @loonatheworld'),
                                      Text('Instagram: @loonatheworld'),
                                      Text('Fancafe: loonatheworld'),
                                      Text('Official Website: loonatheworld.com'),
                                      Text('Youtube: Loona channel'),
                                      Text('Vlive: 이달의 소녀(LOONA)'),
                                      Text('TikTok: @loonatheworld_official'),
                                    ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}