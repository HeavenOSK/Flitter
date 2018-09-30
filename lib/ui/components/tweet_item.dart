import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TweetItem extends StatelessWidget {
  final _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(8.0, 4.0, 16.0, 4.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
          color: Colors.grey[300],
        ),
      ),
      child: Container(
        height: 78.0,
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
              child: Icon(Icons.account_circle,
                  size: 65.0, color: Colors.blueGrey),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'ヘブン🦌',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '@HeavenOSK･2018/09/01',
                                    style: TextStyle(
                                      fontSize: _fontSize,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.blueGrey[600],
                                    ),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    color: Colors.grey,
                                    size: 24.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                '明日のGoogle Dev Fest楽しみやあ！',
                                style: TextStyle(fontSize: _fontSize),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.comment,
                          size: 16.0, color: Colors.blueGrey),
                      Container(
                        width: 52.0,
                      ),
                      Icon(FontAwesomeIcons.retweet,
                          size: 16.0, color: Colors.blueGrey),
                      Container(
                        width: 52.0,
                      ),
                      Icon(FontAwesomeIcons.heart,
                          size: 16.0, color: Colors.blueGrey),
                      Container(
                        width: 52.0,
                      ),
                      Icon(FontAwesomeIcons.upload,
                          size: 16.0, color: Colors.blueGrey),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                            alignment: Alignment.topRight,
                            child: Icon(Icons.equalizer,
                                size: 20.0, color: Colors.blueGrey)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
