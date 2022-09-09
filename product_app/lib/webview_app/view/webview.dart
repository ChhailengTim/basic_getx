import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatefulWidget {
  const WebviewScreen({super.key});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview Package'),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.netflix.com/',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        onProgress: (url) {
          debugPrint("New website: $url");
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.import_export,
          size: 32,
        ),
        onPressed: () async {
          controller.loadUrl('https://www.youtube.com/');
        },
      ),
    );
  }
}
