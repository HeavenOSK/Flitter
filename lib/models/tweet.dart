import 'package:meta/meta.dart';

//今度, Userは別クラスに切り出す
class Tweet {
  Tweet({
    @required this.userName,
    @required this.accountName,
    @required this.dateTime,
    @required this.contents,
  })  : assert(userName != null),
        assert(accountName != null),
        assert(dateTime != null),
        assert(contents != null);

  final String userName;
  final String accountName;
  final DateTime dateTime;
  final String contents;

  String getDateTimeStr(){
    String dateTImeStr = dateTime.year.toString()+'/'+dateTime.month.toString()+'/'+dateTime.day.toString();
    return dateTImeStr;
  }
}
