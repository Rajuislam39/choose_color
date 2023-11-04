import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  List<Map<String,dynamic>> list=[
    {"color": Colors.black,"name":"Black"},
    { "color":Colors.red,"name":"Red"
    },
    {"color":Colors.cyan,"name":"Cyan"},
    {"color":Colors.amber,"name":"Amber"},
    {"color":     Colors.grey,"name":"Grey"},
    {"color":Colors.pink,"name":"Pink"},

    {"color":Colors.teal,"name":"Teal"},
    {"color":Colors.yellow,"name":"Yellow"},
    {"color":Colors.blue,"name":"BLue"},
    {"color":Colors.green,"name":"Green"},


  ];
 int _selectColor=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,),
          itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            setState(() {
              _selectColor=index;
            });
// print("------You Click:${list[index]["name"]}-----");
          },
          child:
        _selectColor==index?Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black54,
              maxRadius: 100,child: Text("Ok",style: TextStyle(color: Colors.black,fontSize: 30),),
            ),
        ):Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
            backgroundColor: list[index]["color"],
            child: Text("Click me",style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
          ),
          );
          }),
    );
  }
}
