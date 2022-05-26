import 'package:flutter/material.dart';
import 'package:home_control/src/modules/pages/camera/easter_egg.dart';
import 'package:home_control/src/modules/pages/camera/web_video.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Câmeras disponíveis"),
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const WebViewCamera(
                      url: 'http://192.168.0.15:8081',
                      title: 'Câmera 1',
                    )),
          ),
          child: const ListTile(
            title: Text('camera 1'),
            subtitle: Text("Interna"),
            leading: Icon(Icons.camera_alt_rounded),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const WebViewCamera(
                      url: 'http://192.168.0.15:8082',
                      title: 'Câmera 2',
                    )),
          ),
          child: const ListTile(
            title: Text('camera 2'),
            subtitle: Text("Interna"),
            leading: Icon(Icons.camera_alt_rounded),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EasterEgg()),
          ),
          child: const ListTile(
            title: Text('Adicionar câmera'),
            subtitle: Text("Adicione Mais câmeras(Em Breve...)"),
            leading: Icon(Icons.add_a_photo),
          ),
        ),
      ]),
    );
  }
}
