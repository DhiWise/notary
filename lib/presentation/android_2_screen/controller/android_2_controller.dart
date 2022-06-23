import '/core/app_export.dart';
import 'package:notaryyy/presentation/android_2_screen/models/android_2_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:notaryyy/core/utils/progress_dialog_utils.dart';
import 'package:notaryyy/supabase/models/task_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Android2Controller extends GetxController with StateMixin<dynamic> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  Rx<Android2Model> android2ModelObj = Android2Model().obs;

  var taskModel = <TaskModel>[];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    descriptionController.dispose();
  }

  Future<void> createTaskDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('task')
          .insert(reqParams)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreateTaskDocumentSuccess(response.data);
      } else {
        onCreateTaskDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreateTaskDocumentError(err.toString());
    }
  }

  void onCreateTaskDocumentSuccess(dynamic response) {
    if (response != null) {
      taskModel = (response as List).map((e) => TaskModel.fromJson(e)).toList();
    }
    Get.offNamed(AppRoutes.android4Screen);
  }

  void onCreateTaskDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Fluttertoast.showToast(
      msg: "Something Bad happened on the server!",
    );
  }
}
