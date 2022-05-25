import 'package:flutter/material.dart';
import '../utilities/extensions/date_extension.dart';
import '../utilities/general_utility.dart';
import '../utilities/managers/font_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simplified Date Formatting Demo", style: GeneralUtility.shared.getTextStyle(myFont: MyFont.medium, fontSize: 20),),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Now: ${DateTime.now().toFormattedString(DateFormat.yyyymmddhhmmssDashSpaceColon12Hr)}", style: GeneralUtility.shared.getTextStyle(fontSize: 17),),
          ],
        ),
      ),
    );
  }
}