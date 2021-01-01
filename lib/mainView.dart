import 'package:flutter/material.dart';
import 'package:pcn/recycler/bubble.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("메모 목록"),
          backgroundColor: Color.fromRGBO(50, 50, 50, 1),
        ),
        body: Container(
          color: Color.fromRGBO(70, 70, 70, 1),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ListView(
              children: [
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/RoomView");
                  },
                  child: Card(
                    elevation: 15,
                    shadowColor: Color.fromRGBO(10, 10, 10, 1),
                    color: Color.fromRGBO(90, 90, 90, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 70,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "🏡 집에서 할 일!", //🏢 회사 TODO
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/RoomView2");
                  },
                  child: Card(
                    elevation: 15,
                    shadowColor: Color.fromRGBO(10, 10, 10, 1),
                    color: Color.fromRGBO(90, 90, 90, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 70,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "🏢 회사 TODO",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
