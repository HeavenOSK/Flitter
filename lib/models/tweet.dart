import 'package:meta/meta.dart';

//今度, Userは別クラスに切り出す
class Tweet {
  Tweet({
    @required this.userName,
    @required this.accountName,
    @required this.dateTime,
    @required this.contents,
    this.repliedCount = 0,
    this.retweetedCount = 0,
    this.likedCount = 0,
    this.isMeTweeted = false,
    this.isMeRetweeted: false,
    this.isMeLiked: false,
  })  : assert(userName != null),
        assert(accountName != null),
        assert(dateTime != null),
        assert(contents != null);

  final String userName;
  final String accountName;
  final DateTime dateTime;
  final String contents;

  final int repliedCount;
  final int retweetedCount;
  final int likedCount;

  // ツイートに対して自分がアクションをしたか
  final bool isMeTweeted;
  final bool isMeRetweeted;
  final bool isMeLiked;

  String getDateTimeStr() {
    String dateTImeStr = dateTime.year.toString() +
        '/' +
        dateTime.month.toString() +
        '/' +
        dateTime.day.toString();
    return dateTImeStr;
  }
}
