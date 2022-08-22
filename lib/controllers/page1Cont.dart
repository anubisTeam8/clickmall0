import 'dart:convert';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import '../models/Page1Class.dart';

class Page1Cont extends GetxController {
  Rxn<Page1Class> data = Rxn();
  List items = [];
  RxList ads = [].obs;
  RxBool loading = false.obs;

  Future page1Api() async {
    loading.value = true;
    try {
      var request = http.MultipartRequest('GET', Uri.parse('http://abdo1572001-003-site8.atempurl.com/api/page1_user'));
      http.StreamedResponse response = await request.send();
      var res = await response.stream.bytesToString();
      if (response.statusCode == 200) {
        var fres = jsonDecode(res);
        if (fres["status"]) {
          data.value = Page1Class.fromJson(fres);
          items = data.value?.listData?.map((e) => e.rest?.length==0?null:e).toList()??[];
          while(items.contains(null)) {items.remove(null);}
          ads.value = data.value?.ads??[];
        }
      }
    } catch (e) {print(e.toString());}
    loading.value = false;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    page1Api();
  }

}

