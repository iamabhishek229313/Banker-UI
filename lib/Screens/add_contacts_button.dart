import 'package:flutter/material.dart';

class AddContactsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Theme.of(context).primaryColor,
      width: 100.0,
      height: 100.0,
      child: new Stack(
        children: <Widget>[
          new Center(
            child: new Container(
              width: 60,
              height: 60,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0)),
              child: new Center(
                child: new Container(
                  width: 53,
                  height: 53,
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(21.0),
                  ),
                  child: new Center(
                    child: new Container(
                      child: new IconButton(
                        onPressed: () {
                          print("Button Clicked");
                        },
                        icon: new Icon(Icons.add),
                        color: Colors.white,
                        iconSize: 28.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
