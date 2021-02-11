import 'package:date_app/data/users.dart';
import 'package:date_app/model/user.dart';
import 'package:date_app/provider/feedback_position_provider.dart';
import 'package:date_app/values/backgrounds.dart';
import 'package:date_app/widget/bottom_buttons_widget.dart';
import 'package:date_app/widget/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Like extends StatefulWidget {
  //static const routeName = '/Col';
  Like({Key key}) : super(key: key);

  @override
  _Like createState() => _Like();
}

class _Like extends State<Like> {
  final List<User> users = dummyUsers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: DefaultBackground(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              users.isEmpty
                  ? Text('No more users')
                  : Stack(children: users.map(buildUser).toList()),
              Expanded(child: Container()),
              BottomButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.chat, color: Colors.grey),
          SizedBox(width: 16),
        ],
        leading: Icon(Icons.person, color: Colors.grey),
        title: FaIcon(FontAwesomeIcons.fire, color: Colors.deepOrange),
      );

  Widget buildUser(User user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;

    return Listener(
      onPointerMove: (pointerEvent) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.updatePosition(pointerEvent.localDelta.dx);
      },
      onPointerCancel: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      onPointerUp: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      child: Draggable(
        child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => onDragEnd(details, user),
      ),
    );
  }

  void onDragEnd(DraggableDetails details, User user) {
    final minimumDrag = 50;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
      setState(() => users.remove(user));
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
      setState(() => users.remove(user));
    }
  }
}
