import 'package:dev_thingz_hu/constants.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: bgColor,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: "Document Files",
            icon: Icon(
              Icons.work,
              color: bgColor,
            ),
            numberOfFiles: 1329,
            amountOfFiles: "1.3Gb",
          ),
          StorageInfoCard(
            title: "Media Files",
            icon: Icon(
              Icons.perm_media,
              color: bgColor,
            ),
            numberOfFiles: 1329,
            amountOfFiles: "1.3Gb",
          ),
          StorageInfoCard(
            title: "Audio Files",
            icon: Icon(
              Icons.audiotrack,
              color: bgColor,
            ),
            numberOfFiles: 1329,
            amountOfFiles: "1.3Gb",
          ),
          StorageInfoCard(
            title: "Other Files",
            icon: Icon(
              Icons.file_copy,
              color: bgColor,
            ),
            numberOfFiles: 1329,
            amountOfFiles: "1.3Gb",
          ),
        ],
      ),
    );
  }
}
