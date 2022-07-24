import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:ecommerceapp/Components/SSBestODWidget.dart';
import 'package:ecommerceapp/models/SneakerShoppingModel.dart';
import 'package:ecommerceapp/Screens/SSDetailScreen.dart';
import 'package:ecommerceapp/utils/SSDataGenerator.dart';

class SSProductItemWidget extends StatelessWidget {
  final List<SneakerShoppingModel> list = getAllData();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 60),
      child: Wrap(
        runSpacing: 16,
        spacing: 16,
        children: list.map(
          (e) {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                SSDetailScreen(img: e.img).launch(context);
              },
              child: SSBestODWidget(title: e.name, img: e.img, subtitle: e.subtitle, amount: e.amount),
            );
          },
        ).toList(),
      ),
    );
  }
}
