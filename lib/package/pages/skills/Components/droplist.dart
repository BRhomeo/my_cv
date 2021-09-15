import 'package:flutter/material.dart';

class SkillsDropList extends StatefulWidget {
  final String title;
  final List<String> skillsList;
  const SkillsDropList(
      {Key? key, required this.title, required this.skillsList})
      : super(key: key);

  @override
  State<SkillsDropList> createState() => _SkillsDropListState();
}

class _SkillsDropListState extends State<SkillsDropList> {
  List<Widget> buildBody(List bodyList) {
    List<Widget> body = [];

    for (int i = 0; i < bodyList.length; i++) {
      body.add(
        Container(
          color: Colors.pink,
          child: Text(bodyList[i]),
        ),
      );
    }

    return body;
  }

  bool isopen = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (i, open) {
        setState(() {
          isopen = !isopen;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isopen) => Container(
            color: Colors.amber,
            child: Text(widget.title),
          ),
          body: Column(
            children: buildBody(widget.skillsList),
          ),
          isExpanded: isopen,
          canTapOnHeader: true,
        ),
      ],
    );
  }
}


// Expanded(
//             child: ListView.builder(
//                 itemCount: widget.skillsList.length,
//                 itemBuilder: (context, index) {
//                   return Text(
//                     widget.skillsList[index],
//                   );
//                 }),
//           ),

 //!Flutter platForms expirens
    //* ['android 80%','ios 40%','web 75%','windows 60%','mac 50%']

      //! gineral programing skills
      //* ['OOP 70%','data structure 50%','SQl database 65%','3ed party api 80%','firebase 80%','git & github 60%','Group warkcing 85%','Commit to the deadline 95%']

      //!Flutter expirens
      //* ['3ed party library 90%','custmaize laibraes 70%','make clean and profictinal code 90%','make an Ui as espacted 90%','Them and localization 90%','resposve Ui 80%','state mangment packeages 70%']
