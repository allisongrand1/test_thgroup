import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:test_thgroup/module_data/model/model.dart';

class Service {
  Future<List<Company>> getCompanies() async {
    var responses = await Future.wait([
      http.get(
        Uri.parse(
            'https://www.alphavantage.co/query?function=OVERVIEW&symbol=AMZN&apikey=68Y41I2EH701IAH7'),
      ),
      http.get(Uri.parse(
          'https://www.alphavantage.co/query?function=OVERVIEW&symbol=IMBI&apikey=68Y41I2EH701IAH7')),
      http.get(Uri.parse(
          'https://www.alphavantage.co/query?function=OVERVIEW&symbol=AAPL&apikey=68Y41I2EH701IAH7')),
      http.get(Uri.parse(
          'https://www.alphavantage.co/query?function=OVERVIEW&symbol=GOOG&apikey=68Y41I2EH701IAH7')),
      http.get(Uri.parse(
          'https://www.alphavantage.co/query?function=OVERVIEW&symbol=MSFT&apikey=68Y41I2EH701IAH7')),
    ]);

    return <Company>[
      ..._getFromResponse(responses[0]),
      ..._getFromResponse(responses[1]),
      ..._getFromResponse(responses[2]),
      ..._getFromResponse(responses[3]),
      ..._getFromResponse(responses[4]),
    ];
  }

  List<Company> _getFromResponse(http.Response response) {
    return [
      if (response.statusCode == 200)
        Company.fromJson(json.decode(response.body)),
    ];
  }
}
