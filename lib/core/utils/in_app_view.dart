// import 'package:cinemax_app/core/utils/app_colors.dart';
// // ignore: unused_import
// import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class CustomInappView extends StatefulWidget {
//   const CustomInappView({super.key, required this.movieOrTvUrl});
//   final String movieOrTvUrl;
//   @override
//   CustomInappViewState createState() => CustomInappViewState();
// }

// class CustomInappViewState extends State<CustomInappView> {
//   late InAppWebViewController webViewController;
//   double loadingProgress = 0;
//   bool isClicked = false;

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       onPopInvokedWithResult: (didPop, result) {
//         clicked(context);
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           systemOverlayStyle: SystemUiOverlayStyle(
//               statusBarColor:
//                   isClicked ? AppPrimaryColors.dark : Colors.transparent),
//         ),
//         body: Column(
//           children: [
//             LinearProgressIndicator(value: loadingProgress),
//             Expanded(
//               child: InAppWebView(

//                 initialUrlRequest: URLRequest(
//                   url: WebUri.uri(
//                     Uri.parse(widget.movieOrTvUrl),
//                   ),
//                 ),
//                 onWebViewCreated: (InAppWebViewController controller) {
//                   webViewController = controller;
//                 },
//                 onLoadStop:
//                     (InAppWebViewController controller, Uri? url) async {
//                   setState(() {
//                     loadingProgress = 0;
//                   });

//                 },
//                 onProgressChanged:
//                     (InAppWebViewController controller, int progress) {
//                   setState(() {
//                     loadingProgress = progress / 100;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void clicked(BuildContext context) {
//     setState(() {
//       isClicked = !isClicked;
//       Navigator.maybePop(context);
//     });
//   }
// }
