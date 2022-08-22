import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/viewallModel.dart';

String id = '';

class ViewAllCont extends RxController {
  Rxn<ViewallModel> data = Rxn();
  RxBool loading = false.obs;

  Future viewAllApi() async {
    loading.value = true;
    try {
      var request = http.MultipartRequest('GET', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/view_all/$id'));
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        var fres = jsonDecode(res);
        if (fres["status"]) {
          data.value = ViewallModel.fromJson(fres);
        }
      }
    } catch (e) {print(e.toString());}
    loading.value = false;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewAllApi();
    print(id);
  }
}