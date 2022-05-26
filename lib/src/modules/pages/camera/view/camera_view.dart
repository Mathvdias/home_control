import 'package:flutter/material.dart';
import 'package:home_control/src/app/components/modal_banana.dart';
import 'package:home_control/src/modules/pages/camera/web_video.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Câmeras disponíveis"),
      ),
      body: ListView(
        children: [
          Column(children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WebViewCamera(
                          url: 'http://192.168.0.100:8081',
                          title: 'Câmera 1 - Garagem',
                        )),
              ),
              child: Column(
                children: const [
                  SizedBox(
                    width: double.maxFinite,
                    height: 200,
                    child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: 'http://192.168.0.100:8081',
                    ),
                  ),
                  ListTile(
                    title: Text('camera 1 - Garagem'),
                    subtitle: Text("Interna"),
                    leading: Icon(Icons.camera_alt_rounded),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WebViewCamera(
                          url: 'http://192.168.0.100:8082',
                          title: 'Câmera 2 - Sala de Estar',
                        )),
              ),
              child: Column(
                children: const [
                  SizedBox(
                    width: double.maxFinite,
                    height: 200,
                    child: WebView(
                      javascriptMode: JavascriptMode.unrestricted,
                      initialUrl: 'http://192.168.0.100:8082',
                    ),
                  ),
                  ListTile(
                    title: Text('camera 2 - Sala de Estar'),
                    subtitle: Text("Interna"),
                    leading: Icon(Icons.camera_alt_rounded),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () => modalGlobalBanana(context),
              label: const Text('Adicionar câmera'),
              icon: const Icon(Icons.add_a_photo),
            ),
          ]),
        ],
      ),
    );
  }
}
