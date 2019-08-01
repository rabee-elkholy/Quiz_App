import 'package:flutter/material.dart';
import 'materials.dart';

class ShowAnswers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Correct Answers!",
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: color2,
          title: Text("Correct Answers!"),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          decoration: ShapeDecoration(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            image: DecorationImage(
              image: AssetImage("images/im3.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: ListView.builder(
            itemCount: source.length,
            itemBuilder: (BuildContext context, int position) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "${source[position]["question"]}",
                      style: TextStyle(
                        fontSize: 17,
                        color: color4,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      " => ${source[position]["correct"]}",
                      style: TextStyle(
                        fontSize: 15,
                        color: color4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: color2,
                      child: Text(
                        "${position + 1}",
                        style: TextStyle(
                          fontSize: 20,
                          color: color3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ),
                  Divider(
                    color: color4,
                    height: 20,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
