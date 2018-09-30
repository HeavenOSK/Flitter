import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const button_size = 20.0;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _homeListItems = List<HomeListItem>.generate(
      8,
      (i) => HomeListItem(),
    );
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(36.0),
          child: AppBar(
            leading: Icon(Icons.account_circle, size: 36.0),
            elevation: 0.0,
            title: Text('Home',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                child: Center(
                    child: Icon(Icons.edit,
                        size: 26.0, color: Colors.lightBlue)),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: _homeListItems.length,
            itemBuilder: (context, index) {
              return _homeListItems[index];
            }),
      ),
    );
  }
}

class HomeListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.4,
              color: Colors.grey,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            child: Container(
              height: 82.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.account_circle, size: 65.0),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'ヘブン🦌',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '@HeavenOSK･2018/09/01',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Wrap(
                                        children: <Widget>[
                                          Text(
                                            '明日のGoogle Dev Fest楽しみやあ！',
                                          ),
                                        ],
                                      ),
                                    ), //contents
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.expand_more,
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble_outline,
                              size: button_size,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.transform,
                              size: button_size,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: button_size,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.save_alt,
                              size: button_size,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.equalizer,
                              size: button_size,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
