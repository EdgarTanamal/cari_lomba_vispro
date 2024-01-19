import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String Description =
      "Lalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalaalalalalalalalalalalalalalalalalalalalalalallalalaalalalalalalalalalalalalalalalalalalalalalalalalalalalalalalala";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 75,
                        child: Text(
                          "National Programming and Logic Competition",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/download.jpg',
                        width: 375,
                        height: 200,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Registration Date ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 280,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Open Registration : 2/7/2024",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x85858585),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 280,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Last Registration : 4/8/2024",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0x85858585),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Description",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: DescriptionTextWidget(text: Description),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Organizer",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('asset/Lomba_nplc.jpg'),
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "UC Makassar",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "University",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0x85858585),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Contact Person",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "08531546977",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0x85858585)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fee",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Rp.200.000",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0x58585858)
                        ),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ElevatedButton(
                      onPressed: () {}
                      , child: const Text("Register Now")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf = "";
  String secondHalf = "";

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 90) {
      firstHalf = widget.text.substring(0, 90);
      secondHalf = widget.text.substring(90, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              children: <Widget>[
                new Text(
                  flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0x85858585),
                  ),
                ),
                new InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "show more" : "show less",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
