import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomInappView extends StatefulWidget {
  const CustomInappView({super.key, required this.movieOrTvUrl});
  final String movieOrTvUrl;
  @override
  CustomInappViewState createState() => CustomInappViewState();
}

class CustomInappViewState extends State<CustomInappView> {
  late InAppWebViewController webViewController;
  double loadingProgress = 0;
  bool isClicked = false;
@override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.initState();
    
  }
  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        clicked(context);
      },
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor:
                  isClicked ? AppPrimaryColors.dark : Colors.transparent),
        ),
        body: Column(
          children: [
            LinearProgressIndicator(value: loadingProgress),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: WebUri(widget.movieOrTvUrl)),
                onWebViewCreated: (controller) {
                  webViewController = controller;
                },
                onLoadStop: (controller, url) async {
                  await controller.evaluateJavascript(source: '''
            // Block clicks on ad elements
            document.addEventListener('click', function(event) {
              let target = event.target;
              while (target) {
                if (target.classList && target.classList.contains('ad-class')) {
                  event.preventDefault(); 
                  return;
                }
                target = target.parentNode;
              }
            }, true);

            // Use MutationObserver to continuously block ads
            const observer = new MutationObserver((mutations) => {
              mutations.forEach((mutation) => {
                mutation.addedNodes.forEach((node) => {
                  if (node.nodeType === 1) {
                    if (node.classList.contains('ad-class') || node.id === 'ad-id') {
                      node.style.display = 'none';
                    }
                  }
                });
              });
            });
            observer.observe(document.body, { childList: true, subtree: true });
          ''');
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  final url = navigationAction.request.url.toString();
                  final allowedDomains =
                      RegExp(r'^https://(vidsrc\.xyz|yourdomain\.com)');
                  if (!allowedDomains.hasMatch(url)) {
                    return NavigationActionPolicy.CANCEL;
                  }
                  return NavigationActionPolicy.ALLOW;
                },
                onCreateWindow: (controller, createWindowRequest) async {
                  return false; // Block new windows to prevent pop-ups
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void clicked(BuildContext context) {
    setState(() {
      isClicked = !isClicked;
      Navigator.maybePop(context);
    });
  }
}
