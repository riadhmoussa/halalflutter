import 'package:flutter/material.dart';
import 'package:halalandroid/screens/users/detailsad.dart';

class ItemAds extends StatefulWidget {
  final bool showEditButton;

  const ItemAds({
    Key? key,
    this.showEditButton = false,
  }) : super(key: key);

  @override
  _ItemAdsState createState() => _ItemAdsState();
}

class _ItemAdsState extends State<ItemAds> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailsAdScreen()),
              )
            },
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('images/ad.png')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.up,
                        textBaseline: TextBaseline.alphabetic,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Dutch sheep",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          widget.showEditButton == true
                              ? const Text(
                                  "Edit",
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                )
                              : Text(
                                  "",
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.access_time, color: Colors.grey, size: 14),
                          Text(
                            "16 hours ago",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        verticalDirection: VerticalDirection.up,
                        textBaseline: TextBaseline.alphabetic,
                        textDirection: TextDirection.ltr,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.person_outline_sharp,
                                  color: Colors.grey, size: 14),
                              Text(
                                "Moussa Riadh",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.right,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.ltr,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.location_on_outlined,
                                  color: Colors.grey, size: 14),
                              Text(
                                "Makkah",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.right,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
