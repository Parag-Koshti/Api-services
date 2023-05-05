import 'dart:convert';
import 'package:http/http.dart';
import '../model/article.dart';

class Apiservices{
  final endpoint="https://newsapi.org/v2/everything?q=tesla&from=2023-04-05&sortBy=publishedAt&apiKey=5d18ed8225034f1bb7b0ebce3b80aa05";
  Future<Iterable>getArticle()  async {
    Response response = await get(Uri.parse(endpoint));

    if(response.statusCode == 200 ){
      Map<String,dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json["articles"];
      Iterable article = body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    }else{
      throw "Data not fount";
    }

  }
}