import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TweetItem extends StatelessWidget {
  final _fontSize = 16.0;
  final _mainColor = Colors.black87;
  final _subColor = Colors.blueGrey[600];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(8.0, 4.0, 16.0, 4.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.4, color: Colors.grey[300]),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Profile 写真を表示する
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child:
                Icon(Icons.account_circle, size: 65.0, color: Colors.blueGrey),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTopRow(),
                _buildContents(),
                _buildButtonList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //User名, Account名, 日時情報 の列
  Widget _buildTopRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'ヘブン🦌',
                style: TextStyle(
                  fontSize: _fontSize,
                  fontWeight: FontWeight.bold,
                  color: _mainColor,
                ),
              ),
              Text(
                '@HeavenOSK･' + '2018/09/01',
                style: TextStyle(
                  fontSize: _fontSize,
                  fontWeight: FontWeight.w300,
                  color: _subColor,
                ),
              ),
            ],
          ),
          Icon(Icons.expand_more, color: Colors.grey, size: 24.0),
        ],
      ),
    );
  }

  //Tweetの内容部分
  Widget _buildContents() {
    return Container(
      child: Text(
        '明日のGoogle Dev Fest楽しみやあ！',
        style: TextStyle(fontSize: _fontSize, color: _mainColor),
      ),
    );
  }

  //Reply, Retweet, Like, Bookmark, Analyticsボタン の列
  Widget _buildButtonList() {
    return Container(
      margin: new EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(FontAwesomeIcons.comment, size: 16.0, color: _subColor),
          Container(
            width: 52.0,
          ),
          Icon(FontAwesomeIcons.retweet, size: 16.0, color: _subColor),
          Container(
            width: 52.0,
          ),
          Icon(FontAwesomeIcons.heart, size: 16.0, color: _subColor),
          Container(
            width: 52.0,
          ),
          Icon(FontAwesomeIcons.upload, size: 16.0, color: _subColor),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
              alignment: Alignment.topRight,
              child: Icon(Icons.equalizer, size: 20.0, color: _subColor),
            ),
          ),
        ],
      ),
    );
  }
}
