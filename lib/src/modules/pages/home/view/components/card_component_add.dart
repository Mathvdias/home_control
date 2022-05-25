import 'package:flutter/material.dart';

class CardComponentAdd extends StatefulWidget {
  const CardComponentAdd({Key? key}) : super(key: key);

  @override
  State<CardComponentAdd> createState() => _CardComponentAddState();
}

class _CardComponentAddState extends State<CardComponentAdd> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      width: 175,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(width: 1, color: Colors.green)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.add),
            Text("Adicionar Dispositivo"),
          ],
        ),
      ),
    );
  }
}
