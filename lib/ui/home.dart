import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  static const List<String> _statuses = ['帕维尔-杜罗夫就是我', '我是帕维尔-杜罗夫', '孔雀'];
  String _status = _statuses[0];

  void _changeStatus() {
    setState(() {
      _index++;
      _status = _statuses[_index % 3];
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: 1000,
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 10),
          child: Wrap(
            spacing: 10,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 250,
                  ),
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 15,
                    children: [
                      Container (
                          width: 250,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                          constraints: const BoxConstraints(
                            minHeight: 250,
                          ),
                          child: Image.asset('assets/images/durov.jpg')
                      ),
                      Container(
                        width: 250,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(92, 128, 180, 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        constraints: const BoxConstraints(
                          minHeight: 35,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                            style: TextStyle(color: Colors.white),
                            'Отправить подарок'
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.horizontal,
                        spacing: 10,
                        children: [
                          Container(
                            width: 190,
                            constraints: const BoxConstraints(
                              minHeight: 35,
                            ),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(92, 128, 180, 1),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Text(
                                style: TextStyle(color: Colors.white),
                                'Подписаться'
                            ),
                          ),
                          Container(
                            width: 50,
                            constraints: const BoxConstraints(
                              maxHeight: 35,
                            ),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(237, 238,	240, 1),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                                style: TextStyle(fontSize: 30, color: Color.fromRGBO(151, 164, 187, 1)),
                                '...'
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 700,
                color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                child: Wrap(
                  children: <Widget>[
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 15,
                      children: <Widget>[
                        Container(
                          width: 670,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(237, 238,	240, 1),
                                    width: 1.0,
                                  )
                              )
                          ),
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Wrap(
                            children: <Widget>[
                              Column(
                                children: [
                                  const Row(
                                      children: <Widget>[
                                        Text(
                                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                            "Павел Дуров"
                                        ),
                                        Spacer(),
                                        Text(
                                            style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                            "заходил 14 декабря 2018 в 16:28"
                                        )
                                      ]
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text (
                                        style: const TextStyle(fontWeight: FontWeight.w600),
                                        _status,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ), // title
                        Container(
                          width: 700,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(237, 238,	240, 1),
                                    width: 1.0,
                                  )
                              )
                          ),
                          padding: const EdgeInsets.only(bottom: 15.0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Wrap(
                            direction: Axis.vertical,
                            spacing: 20,
                            alignment: WrapAlignment.start,
                            children: [
                              Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 350,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 216,
                                      alignment: AlignmentDirectional.centerStart,
                                      child: const Wrap(
                                        spacing: 10,
                                        direction: Axis.vertical,
                                        children: [
                                          Text(
                                              style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                              "Дата рождения:"
                                          ),
                                          Text(
                                              style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                              "Город:"
                                          ),
                                          Text(
                                              style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                              "Место работы:"
                                          ),
                                          Text(
                                              style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                              "Веб-сайт:"
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Wrap(
                                      spacing: 10,
                                      direction: Axis.vertical,
                                      alignment: WrapAlignment.start,
                                      children: [
                                        Text(
                                            style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1)),
                                            "10 октября 1984 г."
                                        ),
                                        Text(
                                            style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1)),
                                            "Санкт-Петербург"
                                        ),
                                        Text(
                                            style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1)),
                                            "Telegram"
                                        ),
                                        Text(
                                            style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1)),
                                            "http://t.me/durov"
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 670,
                                alignment: AlignmentDirectional.center,
                                child: const Text(
                                    style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1)),
                                    "Показать подробную информацию"
                                ),
                              ),
                            ],
                          ),
                        ), // description
                        const SizedBox(
                          width: 670,
                          child: Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 15,
                            children: [
                              Column(
                                children: [
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1), fontWeight: FontWeight.bold, fontSize: 20),
                                      "5.9M"
                                  ),
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                      "подписчиков"
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1), fontWeight: FontWeight.bold, fontSize: 20),
                                      "254"
                                  ),
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                      "фотографии"
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1), fontWeight: FontWeight.bold, fontSize: 20),
                                      "6"
                                  ),
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                      "видозаписей"
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(92, 128, 180, 1), fontWeight: FontWeight.bold, fontSize: 20),
                                      "243K"
                                  ),
                                  Text(
                                      style: TextStyle(color: Color.fromRGBO(169, 171, 191, 1), fontWeight: FontWeight.bold),
                                      "подарков"
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ), // statistics
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeStatus,
        tooltip: 'changeStatus',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}