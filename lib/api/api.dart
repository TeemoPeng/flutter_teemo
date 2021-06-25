import 'package:teemo/http/index.dart';


class API{
  static Request request = Request();

  static getArticle({ Object data, Object headers }) {
    return request.get('common/article/category/list', data);
  }
}