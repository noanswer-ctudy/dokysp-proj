import 'package:flutter/material.dart';

// 왼쪽인지 오른쪽인지
// type

enum BUBBLE_TYPE {
  TEXT,
  VIDEO,
  IMAGE,
  AUDIO,
}

class Bubble extends StatelessWidget {
  String _content;
  BUBBLE_TYPE _TYPE;
  int textLine = 0;
  int textLength = 0;

  Bubble(String content, BUBBLE_TYPE TYPE) {
    _content = content;
    _TYPE = TYPE;

    if (_TYPE == BUBBLE_TYPE.TEXT) {
      print(content);
      print(content.length);
      textLength = content.length;

      print("new line: " + content.split("\n").length.toString());
      textLine = content.split("\n").length - 1;
      print(textLine);

      print("=======");
    } else if (_TYPE == BUBBLE_TYPE.IMAGE) {
      textLine = 10;
      textLength = 17;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50 + (textLine.toDouble() * 17),
      // width: 100,
      padding: EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            // height: 60,
            width: 16.5 * textLength.toDouble(),
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Builder(
              builder: (context) {
                if (_TYPE == BUBBLE_TYPE.TEXT) {
                  return Text(_content);
                } else if (_TYPE == BUBBLE_TYPE.IMAGE) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(_content),
                    ),
                  );
                }
                return SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
