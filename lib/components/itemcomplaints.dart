import 'package:flutter/material.dart';

class ItemComplaints extends StatefulWidget {
  const ItemComplaints({Key? key}) : super(key: key);

  @override
  _ItemComplaintsState createState() => _ItemComplaintsState();
}

class _ItemComplaintsState extends State<ItemComplaints> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "#1",
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Column(
                children: const [
                  Text(
                    "24 minutes ago",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Being processed",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
