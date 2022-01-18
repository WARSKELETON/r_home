import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalletAddressWidget extends StatelessWidget {
  final String address;

  const WalletAddressWidget({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container (
              width: MediaQuery.of(context).size.width * 0.58,
              child: Text(
                address,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black
                )
              ),
            ),
            Material(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: IconButton(
                iconSize: 15,
                icon: const Icon(Icons.copy),
                tooltip: "Copy Address",
                onPressed: () => Clipboard.setData(ClipboardData(text: address)).then((_) => 
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Address copied to clipboard")))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
