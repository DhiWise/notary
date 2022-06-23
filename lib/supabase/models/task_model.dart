class TaskModel {
  int? id;
  String? createdAt;
  String? taskName;
  bool? status;
  String? desc;

  TaskModel({this.id, this.createdAt, this.taskName, this.status, this.desc});

  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    taskName = json['task_name'] as String;
    status = json['status'] as bool;
    desc = json['desc'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.taskName != null) {
      data['task_name'] = this.taskName;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.desc != null) {
      data['desc'] = this.desc;
    }
    return data;
  }
}
