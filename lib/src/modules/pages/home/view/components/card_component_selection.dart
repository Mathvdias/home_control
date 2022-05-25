import 'package:flutter/material.dart';
import 'package:home_control/src/modules/pages/home/controller/home_controller.dart';

class CardSelectionWidget extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function function;
  final String url;
  const CardSelectionWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.function,
    required this.url,
  }) : super(key: key);

  @override
  State<CardSelectionWidget> createState() => _CardSelectionWidgetState();
}

class _CardSelectionWidgetState extends State<CardSelectionWidget> {
  HomeController homeController = HomeController();
  bool _isStatus = false;
  void toggleSwitch(switchStatus) {
    setState(() {
      _isStatus = !_isStatus;
      homeController.postLedstatus(widget.url, _isStatus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(
                width: 1,
                color: _isStatus == true ? Colors.green : Colors.red)),
        surfaceTintColor: _isStatus == true ? Colors.green : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(widget.icon),
            Text(widget.text),
            Transform.scale(
              scale: 1.3,
              child: Switch(
                  activeColor: Colors.green,
                  value: _isStatus,
                  onChanged: toggleSwitch),
            )
          ],
        ),
      ),
    );
  }
}
