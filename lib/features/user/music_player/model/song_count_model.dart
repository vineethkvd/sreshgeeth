class SongsCountModel {
  String? status;
  String? songViewCount;

  SongsCountModel({this.status, this.songViewCount});

  SongsCountModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    songViewCount = json['song_view_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['song_view_count'] = this.songViewCount;
    return data;
  }
}
