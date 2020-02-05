import 'package:banker_ui/Screens/add_contacts_button.dart';
import 'package:banker_ui/models/Expenses.dart';
import 'package:banker_ui/models/card_details.dart';
import 'package:banker_ui/models/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOpened = false;
  var appDrawerFromBottom;
  var durationSpeed;

  @override
  Widget build(BuildContext context) {
    if (!isOpened)
      appDrawerFromBottom = -(MediaQuery.of(context).size.height / 2 - 50);
    else
      appDrawerFromBottom = 0.0;
    return new Scaffold(
      body: new GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          if (details.delta.dy < -10) {
            setState(() {
              isOpened = true;
            });
          } else if (details.delta.dy > 10) {
            setState(() {
              isOpened = false;
            });
          }
        },
        child: new Stack(
          children: <Widget>[
            new Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: double.infinity,
              child: new Column(
                children: <Widget>[
                  new SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Icon(
                              Icons.arrow_back,
                              color: Theme.of(context).cardColor,
                              size: 30.0,
                            ),
                            new Container(
                              child: new CircleAvatar(
                                radius: 15.0,
                                backgroundImage:
                                    AssetImage('assets/images/profile_pic.jpg'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        'Total Balance',
                        style: new TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Align(
                          alignment: Alignment.centerLeft,
                          child: new Text(
                            '\$7 534.39',
                            style: new TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 2.0),
                          ),
                        ),
                        new Image(
                          image: AssetImage(
                              'assets/images/mc_downloads_symbol_350x200.png'),
                          width: 25.0,
                          height: 25.0,
                          fit: BoxFit.fitHeight,
                        )
                      ],
                    ),
                  ),
                  new SizedBox(
                    height: 20.0,
                  ),
                  new Container(
                    height: 280.0,
                    width: double.infinity,
                    child: new ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200.0,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: new BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: new Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Image(
                                      width: 35.0,
                                      height: 35.0,
                                      image: AssetImage(cards[index].logoUrl),
                                      fit: BoxFit.contain,
                                    ),
                                    new Icon(
                                      Icons.network_cell,
                                      color: Colors.black,
                                      size: 35.0,
                                    )
                                  ],
                                ),
                              ),
                              new SizedBox(
                                height: 30.0,
                              ),
                              new Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: new Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text('\$${cards[index].money}',
                                          style: new TextStyle(
                                            fontSize: 35.0,
                                            letterSpacing: 1.5,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          )),
                                      new SizedBox(
                                        height: 20.0,
                                      ),
                                      new Text(
                                        cards[index].name,
                                        style: new TextStyle(
                                          color: Colors.blueGrey.shade300,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      new SizedBox(
                                        height: 10.0,
                                      ),
                                      new Text(
                                        'VALID THRU',
                                        style: new TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.blueGrey.shade500,
                                        ),
                                      ),
                                      new SizedBox(
                                        height: 10.0,
                                      ),
                                      new Text(
                                        '${cards[index].expiryDate}',
                                        style: new TextStyle(
                                            fontSize: 25.0,
                                            color: Colors.blue.shade900,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Text(
                      'Send Money to',
                      style: new TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).cardColor,
                          fontSize: 18.0,
                          letterSpacing: 1.5),
                    ),
                  ),
                  new Container(
                      height: 100.0,
                      color: Theme.of(context).primaryColor,
                      child: new ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: users.length + 1,
                        itemBuilder: (context, index) {
                          return (index == 0)
                              ? AddContactsButton()
                              : new Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 8.0, 0.0),
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: new Column(
                                      children: <Widget>[
                                        new ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: new Image(
                                            image: AssetImage(
                                                users[index - 1].imageUrl),
                                            width: 50.0,
                                            height: 50.0,
                                          ),
                                        ),
                                        new SizedBox(
                                          height: 10.0,
                                        ),
                                        new Text(
                                          users[index - 1].name,
                                          style: new TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                      )),
                  new SizedBox(height: 50.0),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Center(
                          child: new Text(
                            "Check Balance",
                            style: new TextStyle(
                                color: Theme.of(context).primaryColor,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                      new Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: new Center(
                          child: new Text("Cashbacks",
                              style: new TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            new AnimatedPositioned(
              duration: Duration(milliseconds: 800),
              curve: Curves.fastOutSlowIn,
              bottom: appDrawerFromBottom,
              child: new AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: isOpened
                        ? Theme.of(context).secondaryHeaderColor
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: new Column(
                    children: <Widget>[
                      new IconButton(
                        icon: new Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.black,
                          size: 50.0,
                        ),
                        onPressed: () {
                          setState(() {
                            if (isOpened) {
                              isOpened = false;
                            } else {
                              isOpened = true;
                            }
                          });
                        },
                      ),
                      new Expanded(
                        child: new ListView.builder(
                          itemCount: exp.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100.0,
                              margin: const EdgeInsets.all(10.0),
                              decoration: new BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                        child: new Image(
                                          image:
                                              AssetImage(exp[index].imageUrl),
                                          width: 75.0,
                                          height: 75.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      new SizedBox(width: 20.0),
                                      new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Text(
                                            exp[index].name,
                                            style: new TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          new SizedBox(
                                            height: 9.0,
                                          ),
                                          new Text(
                                            'next payment',
                                            style: new TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.blueGrey.shade400,
                                                fontSize: 14.0),
                                          ),
                                          new SizedBox(height: 5.0),
                                          new Text(
                                            exp[index].date,
                                            style: new TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17.0,
                                                color: Colors.black),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  new Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          new Text(
                                            "\$ ",
                                            style: new TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.blueGrey.shade500,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1.5),
                                          ),
                                          new Text(
                                            '${exp[index].amount}',
                                            style: new TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 1.5),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
