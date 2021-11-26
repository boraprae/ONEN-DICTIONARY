import 'package:flutter/material.dart';
import 'package:onen/shared/listWord.dart';

Widget listWidget(ListWord item, var onTap) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
    child: Card(
      color: Color(0xFFF0F0F0).withOpacity(0.9),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.eentry,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          '(${item.ecat}) ${item.tentry}',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
