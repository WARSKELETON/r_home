import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionHistoryItemPage extends StatelessWidget {
  const TransactionHistoryItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        leading: SvgPicture.asset(
          'assets/icons/token.svg',
          color: Colors.black,
          width: 30,
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 3.0),
          child: Text(
            '+59 tokens',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
        subtitle: const Text(
          'Gained as a guest reward from host @user3',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
