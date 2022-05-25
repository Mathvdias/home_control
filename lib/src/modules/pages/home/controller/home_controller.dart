import 'package:home_control/src/modules/pages/home/model/home_model.dart';
import 'package:dio/dio.dart';

class HomeController {
  Future postLedstatus(String led, bool newStatus) async {
    var dio = Dio();
    try {
      var url = "http://192.168.0.3:3000/$led";
      var data = StatusModel(status: newStatus).toJson();
      print(data);
      var response = await dio.post(
        url,
        data: data,
      );
      print(response.toString());
    } catch (e) {
      print(e.toString());
    }
  }
}
