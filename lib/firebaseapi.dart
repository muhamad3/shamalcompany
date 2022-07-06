import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseApi {
  static firebase_storage.UploadTask? uploadFile(String destination, File file) {
    try {
      final ref = firebase_storage.FirebaseStorage.instance.ref(destination);

      return ref.putFile(file);
    } on firebase_storage.FirebaseException {
      
      return null;
    }
  }
  static getimage(String email) async {
    
    final image = await firebase_storage.FirebaseStorage.instance
        .ref('users/$email')
        .getDownloadURL();
    return image;
  }
  
  
}