import 'package:flutter/material.dart';

import 'package:shopping/widget/gridview.dart';

import '../list_ofitems.dart';

class Bedes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 30),
      child: gridview(list: card_ofbed),
    );
  }
}


