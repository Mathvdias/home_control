import 'package:flutter/material.dart';
import 'package:home_control/src/modules/pages/temperature/controller/temperature_controller.dart';
import 'package:lottie/lottie.dart';

class TemperatureView extends StatefulWidget {
  const TemperatureView({Key? key}) : super(key: key);

  @override
  State<TemperatureView> createState() => _TemperatureViewState();
}

class _TemperatureViewState extends State<TemperatureView> {
  final controller = TemperatureController();
  @override
  void initState() {
    controller.fetchTemperatureData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Temperatura"),
          actions: [
            IconButton(
                onPressed: () => controller.fetchTemperatureData(),
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () => controller.fetchTemperatureData(),
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.maxFinite,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${controller.temperatureData.temperature!.toStringAsFixed(1)} °C",
                                        style: const TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Lottie.asset(
                                          "assets/images/temperature.json",
                                          height: 80,
                                          width: 100,
                                          frameRate: FrameRate(120)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(Icons.pin_drop),
                                      Text("Casa")
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "${DateTime.now().hour}:${DateTime.now().minute.toStringAsPrecision(2)}h",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          width: double.maxFinite,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                          "Pressão ${controller.temperatureData.pressure!.toStringAsFixed(2)} hPa *",
                                          style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Lottie.asset(
                                          "assets/images/pressure.json",
                                          height: 80,
                                          width: 100,
                                          frameRate: FrameRate(120)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          " *    O valor da pressão atmosférica padrão ao nível médio do mar é de 760 mmHg (milímetros de mercúrio) ou 1 atm (atmosfera). Esse valor corresponde a 101325 Pa ou 1013,25 hPa (unidade mais usada).",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                );
              }),
        ));
  }
}
