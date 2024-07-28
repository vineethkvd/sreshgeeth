class LikeCountModel {
  String? status;
  String? songLikeCount;

  LikeCountModel({this.status, this.songLikeCount});

  LikeCountModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    songLikeCount = json['song_like_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['song_like_count'] = this.songLikeCount;
    return data;
  }
}
