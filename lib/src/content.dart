//this file tends to use the androidcontentprovider/resolver
//but when add this make the build false, the reason is the kotlin compiler version is old
//this file can be reuse if this problem is solved.

// import 'package:android_content_provider/android_content_provider.dart';
//
// class MyAndroidContentProvider extends AndroidContentProvider {
//   MyAndroidContentProvider(String authority) : super(authority);
//
//   @override
//   Future<int> delete(
//     String uri,
//     String? selection,
//     List<String>? selectionArgs,
//   ) async {
//     return 0;
//   }
//
//   @override
//   Future<String?> getType(String uri) async {
//     return null;
//   }
//
//   @override
//   Future<String?> insert(String uri, ContentValues? values) async {
//     return null;
//   }
//
//   @override
//   Future<CursorData?> query(
//     String uri,
//     List<String>? projection,
//     String? selection,
//     List<String>? selectionArgs,
//     String? sortOrder,
//   ) async {
//     return null;
//   }
//
//   @override
//   Future<int> update(
//     String uri,
//     ContentValues? values,
//     String? selection,
//     List<String>? selectionArgs,
//   ) async {
//     return 0;
//   }
// }
//
// @pragma('vm:entry-point')
// void exampleContentProviderEntrypoint() {
//   MyAndroidContentProvider('com.example.myapp.MyAndroidContentProvider');
// }
//
// Future<void> getcontentimage(String curl) async{
//   const cursor = AndroidContentResolver();
//   cursor.canonicalize(url: curl).then((value) {
//     print(value);
//   });
// }