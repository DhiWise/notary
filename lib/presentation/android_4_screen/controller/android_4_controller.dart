import 'package:notaryyy/presentation/android_4_screen/models/group7_item_model.dart';

import '/core/app_export.dart';
import 'package:notaryyy/presentation/android_4_screen/models/android_4_model.dart';
import 'package:supabase/supabase.dart';
import 'package:notaryyy/core/utils/progress_dialog_utils.dart';
import 'package:notaryyy/supabase/models/task_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Android4Controller extends GetxController with StateMixin<dynamic> {
  Rx<Android4Model> android4ModelObj = Android4Model().obs;

  var taskModel = <TaskModel>[];

  @override
  void onReady() async {
    super.onReady();
    fetchTaskCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchTaskCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('task')
          .select()
          .order('created_at', ascending: false)
          .limit(20)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchTaskCollectionSuccess(response.data);
      } else {
        onFetchTaskCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchTaskCollectionError(err.toString());
    }
  }

  void onFetchTaskCollectionSuccess(dynamic response) {
    if (response != null) {
      taskModel = (response as List).map((e) => TaskModel.fromJson(e)).toList();
      if (taskModel != null) {
       for (var item in taskModel) {
        Group7ItemModel model = Group7ItemModel();
       
        model.readsomearticTxt.value = item.taskName!;
         model.iFinishedtodaTxt.value = item.desc !;
      
        android4ModelObj.value.group7ItemList.add(model);
      }
      }
    }
    Fluttertoast.showToast(
      msg: "Hey!Welcome to Notary!",
    );
  }

  void onFetchTaskCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Fluttertoast.showToast(
      msg: "Something bad happened!",
    );
  }
}
