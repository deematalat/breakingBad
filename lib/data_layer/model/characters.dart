class Character {
  late int charId;
  late String name;
  late String nickName;
  late  String image;
  late  List jobs;
  late  String statusIfDeadOrAlive;
  late   List appearanceOfSeasons;
  late String actorName;
  late String categoryForTwoSeries;
  late List betterCallSaulAppearance;
  Character.fromJson(Map<String, dynamic> json) {
    charId=json['char_id'];
    nickName=json['nickname'];
    appearanceOfSeasons =json['appearance'];
     statusIfDeadOrAlive =json['status'];
     image=json['img'];
    jobs=json['occupation'];
    categoryForTwoSeries=json['category'];
    betterCallSaulAppearance=json['better_call_saul_appearance'];
    actorName =json['portrayed'];
    name=json['name'];

  }
}
class Quote {
  late String quote;

  Quote.fromJson(Map<String , dynamic> json){
    quote = json['quote'];
  }
}
