import 'package:flutter/material.dart';
import 'package:flutter_mates/ui/friends/friend.dart';

class FriendDetailBody extends StatelessWidget {
  FriendDetailBody(this.friend);

  final Friend friend;

  _createCircleBadge(IconData iconData, Color color) {
    return new Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: new CircleAvatar(
        backgroundColor: color,
        child: new Icon(
          iconData,
          color: Colors.white,
          size: 16.0,
        ),
        radius: 16.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    var locationInfo = new Row(
      children: [
        new Icon(
          Icons.place,
          color: Colors.white,
          size: 16.0,
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: new Text(
            friend.location,
            style: textTheme.subhead.copyWith(color: Colors.white),
          ),
        ),
      ],
    );

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Text(
          friend.name,
          style: textTheme.headline.copyWith(color: Colors.white),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: locationInfo,
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting '
                'industry. Lorem Ipsum has been the industry\'s standard dummy '
                'text ever since the 1500s.',
            style:
                textTheme.body1.copyWith(color: Colors.white70, fontSize: 16.0),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Row(
            children: [
              _createCircleBadge(Icons.beach_access, theme.accentColor),
              _createCircleBadge(Icons.cloud, Colors.white12),
              _createCircleBadge(Icons.shop, Colors.white12),
            ],
          ),
        ),
      ],
    );
  }
}
