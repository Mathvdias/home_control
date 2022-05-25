import 'package:flutter/material.dart';
import 'package:home_control/src/modules/pages/camera/view/camera_view.dart';
import 'package:home_control/src/modules/pages/home/view/home_page.dart';
import 'package:home_control/src/modules/pages/temperature/view/temperature_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selector = 0;
  void _selectedIcon(index) {
    setState(() {
      _selector = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomePageView(),
      const TemperatureView(),
      const CameraView(),
    ];
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _selector,
            children: pages,
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(milliseconds: 500),
          selectedIndex: _selector,
          onDestinationSelected: _selectedIcon,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.wind_power), label: "Temperatura"),
            NavigationDestination(icon: Icon(Icons.camera), label: "Cameras"),
          ]),
    );
  }
}
