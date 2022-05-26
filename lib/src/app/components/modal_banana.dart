  import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Future<void> modalGlobalBanana(BuildContext context) {
    return showModalBottomSheet<void>(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Lottie.asset(
                    'assets/images/banana.json',
                    frameRate: FrameRate(120),
                    height: 325,
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.close),
                    label: const Text('Em Construção...'),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            );
          },
        );
  }