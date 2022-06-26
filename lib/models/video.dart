import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  String username;
  String uid;
  String id;
  List likes;
  int commentCount;
  int shareCount;
  String songName;
  String caption;
  String videoUrl;
  String thumbnailUrl;
  String profilePhoto;

  Video({
    required this.uid,
    required this.username,
    required this.profilePhoto,
    required this.caption,
    required this.commentCount,
    required this.id,
    required this.likes,
    required this.shareCount,
    required this.songName,
    required this.thumbnailUrl,
    required this.videoUrl,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "profilePhoto": profilePhoto,
        "id": id,
        "likes": likes,
        "commentCount": commentCount,
        "shareCount": shareCount,
        "caption": caption,
        "videoUrl": videoUrl,
        "thumbnailUrl": thumbnailUrl,
        "songName": songName,
      };

  static Video fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Video(
      uid: snapshot['uid'],
      username: snapshot['username'],
      profilePhoto: snapshot['profilePhoto'],
      caption: snapshot['caption'],
      commentCount: snapshot['commentCount'],
      id: snapshot['id'],
      likes: snapshot['likes'],
      shareCount: snapshot['shareCount'],
      songName: snapshot['songName'],
      thumbnailUrl: snapshot['thumbnailUrl'],
      videoUrl: snapshot['videoUrl'],
    );
  }
}
