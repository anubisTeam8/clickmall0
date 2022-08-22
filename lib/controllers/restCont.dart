import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/restModel.dart';

String id_rest = '';

class RestCont extends GetxController{
  Rxn<RestModel> data = Rxn();
  RxBool loading = false.obs;

  Future restApi () async {
    loading.value = true;
    try {
      var request = http.MultipartRequest('GET', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/res/$id_rest'));
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        var fres = jsonDecode(res);
        if (fres["status"]) {
          data.value = RestModel.fromJson(fres);
        }
      }
      loading.value = false;
    } catch (e) {print(e.toString());}
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    restApi();
  }
}