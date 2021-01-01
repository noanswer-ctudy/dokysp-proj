import 'package:flutter/material.dart';
import 'package:pcn/recycler/bubble.dart';

class RoomView extends StatefulWidget {
  @override
  _RoomViewState createState() => _RoomViewState();
}

// https://bsscco.github.io/posts/flutter-layout-widgets/

// 키보드 높이
// - https://pub.dev/packages/flutter_keyboard_size
// - https://stackoverflow.com/questions/49269319/get-keyboard-height-in-flutter

class _RoomViewState extends State<RoomView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey[850],
        // SystemChrome.setEnabledSystemUIOverlays([]);
        // resizeToAvoidBottomInset: false, // 키보드가 UI 무시
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("🏡 집에서 할 일!"),
          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            // double keyboardHeight =
            //     MediaQuery.of(context).size.height - constraints.maxHeight;
            // print(
            //     "----->" + MediaQuery.of(context).viewInsets.bottom.toString());

            return Stack(
              children: [
                Positioned(
                  child: Container(
                    color: Color.fromRGBO(70, 70, 70, 1),
                    child: ListView(
                      children: [
                        Bubble("", BUBBLE_TYPE.AUDIO),
                        Bubble("안녕하세효", BUBBLE_TYPE.TEXT),
                        Bubble("버블 테스트입니다!", BUBBLE_TYPE.TEXT),
                        Bubble("이렇게 버블을\n여러줄로 \n쓸 수도 있답니다!", BUBBLE_TYPE.TEXT),
                        Bubble(
                            "이렇게 버블을\n여러줄로 \n쓸 수도 \n있답니다!", BUBBLE_TYPE.TEXT),
                        Bubble("어때요.. 참 싄기하쥬?", BUBBLE_TYPE.TEXT),
                        Bubble("assets/test.jpg", BUBBLE_TYPE.IMAGE),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  height: 100,
                  width: constraints.maxWidth,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 50,
                        color: Color.fromRGBO(60, 60, 60, 1),
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Color.fromRGBO(60, 60, 60, 1),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 70,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(1000)),
                                  child: Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: TextField(
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        focusColor: Colors.white,
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 50,
                        color: Color.fromRGBO(60, 60, 60, 1),
                        child: Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      );
}
