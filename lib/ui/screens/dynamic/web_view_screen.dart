import 'package:flutter/material.dart';
import 'package:o_dynamic/models/external_page_parameter.dart';
import 'package:o_dynamic/ui/screens/dynamic/daynmic_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends DaynmicScreen {
  const WebViewScreen({super.key, required super.menuItem});

  @override
  Widget build(BuildContext context) {
    final ExternalPageParameter parameter =
        ExternalPageParameter.fromJson(menuItem.parameters);
    return _WebViewContent(parameter: parameter);
  }
}

class _WebViewContent extends StatefulWidget {
  final ExternalPageParameter parameter;
  const _WebViewContent({super.key, required this.parameter});

  @override
  State<_WebViewContent> createState() => _WebViewContentState();
}

class _WebViewContentState extends State<_WebViewContent> {
  WebViewController controller = WebViewController();

  @override
  void initState() {
    super.initState();
    controller.loadRequest(Uri.parse(widget.parameter.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('webView'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
