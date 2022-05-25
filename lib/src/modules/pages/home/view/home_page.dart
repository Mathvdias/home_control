import 'package:flutter/material.dart';
import 'package:home_control/src/modules/pages/home/view/components/card_component_selection.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Smart Control'),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Minha Casa",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 16),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 175,
                  child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/images/house.png",
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                            child: VerticalDivider(
                              indent: 3,
                              endIndent: 3,
                              thickness: 1,
                            ),
                          ),
                          const Text.rich(TextSpan(children: [
                            TextSpan(text: "Total de Lâmpadas: "),
                            TextSpan(
                              text: '6',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]))
                        ],
                      )),
                ),
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      CardSelectionWidget(
                        url: "switchLed0",
                        icon: Icons.tv,
                        text: 'Sala de Estar/Janta',
                        function: () {},
                      ),
                      CardSelectionWidget(
                        url: "switchLed1",
                        icon: Icons.bed,
                        text: 'Suíte',
                        function: () {},
                      ),
                      CardSelectionWidget(
                        url: "switchLed2",
                        icon: Icons.balcony,
                        text: 'Varanda',
                        function: () {},
                      ),
                      CardSelectionWidget(
                        url: "switchLed3",
                        icon: Icons.garage_outlined,
                        text: 'Garagem',
                        function: () {},
                      ),
                      CardSelectionWidget(
                        url: "switchLed4",
                        icon: Icons.local_post_office_outlined,
                        text: 'Escritório',
                        function: () {},
                      ),
                      CardSelectionWidget(
                        url: "switchLed5",
                        icon: Icons.living_outlined,
                        text: 'Frente',
                        function: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 16),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.add),
                      label: const Text("Adicionar Dispositivo"),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
