import 'package:flutter/material.dart';
import 'package:r_home/domain/homes/home.dart';

class SelectHomeWidget extends StatelessWidget {
  final List<Home> homes;

  const SelectHomeWidget({
    Key? key,
    required this.homes,
  }) : super(key: key);

  Widget _itemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text("home$index - Lisbon"),
      subtitle: const Text("12/01/2022 to 17/01/2022\nHost X"),
      isThreeLine: true,
      leading: Radio<String>(
        value: "home$index",
        groupValue: "ddd",
        onChanged: (String? value) {},
      ),
      trailing: Image.asset("assets/icons/home3.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        itemCount: 4,
        itemBuilder: _itemBuilder);
  }
}
