import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flitter/models/tweet.dart';

class TweetCard extends StatelessWidget {
  TweetCard({
    @required this.tweet,
  }) : assert(tweet != null);

  final Tweet tweet;

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
            child: (tweet.userImagetUrl == '')
                ? Icon(Icons.account_circle, size: 65.0, color: Colors.blueGrey)
                : Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 56.0,
                        height: 56.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: Image
                                .asset('assets/sample_profile01.jpg')
                                .image,
                          ),
                        )),
                  ),
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
        children: <Widget>[
          Text(
            tweet.userName,
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: FontWeight.bold,
              color: _mainColor,
            ),
          ),
          Text(
            ' @' + tweet.accountName + '･' + tweet.getDateTimeStr(),
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: FontWeight.w300,
              color: _subColor,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.expand_more,
                color: Colors.grey,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Tweetの内容部分
  Widget _buildContents() {
    return Container(
      child: Text(
        tweet.contents,
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
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(6.0, 0.0, 0.0, 0.0),
              child: (tweet.repliedCount > 0)
                  ? Text(tweet.repliedCount.toString(),
                      style: TextStyle(fontSize: 12.0))
                  : Container(),
            ),
          ),
          Icon(FontAwesomeIcons.retweet,
              size: 16.0,
              color: (tweet.isRetweetedByMe) ? Colors.greenAccent : _subColor),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: (tweet.retweetedCount > 0)
                  ? Text(tweet.retweetedCount.toString(),
                      style: TextStyle(fontSize: 12.0))
                  : Container(),
            ),
          ),
          (tweet.isLikedByMe)
              ? Icon(FontAwesomeIcons.solidHeart, size: 16.0, color: Colors.red)
              : Icon(FontAwesomeIcons.heart, size: 16.0, color: _subColor),
          Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.fromLTRB(6.0, 0.0, 0.0, 0.0),
                child: Text(tweet.likedCount.toString(),
                    style: TextStyle(fontSize: 12.0))),
          ),
          Icon(FontAwesomeIcons.upload, size: 16.0, color: _subColor),
          (tweet.isTweetedByMe)
              ? Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
                    alignment: Alignment.topRight,
                    child: Icon(Icons.equalizer, size: 20.0, color: _subColor),
                  ),
                )
              : Container(width: 50.0),
        ],
      ),
    );
  }
}
