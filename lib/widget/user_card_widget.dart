import 'package:date_app/model/user.dart';
import 'package:date_app/provider/feedback_position_provider.dart';
import 'package:date_app/values/colors.dart';
import 'package:date_app/values/strings.dart';
import 'package:date_app/widget/gradient_box_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserCardWidget extends StatelessWidget {
  final User user;
  final bool isUserInFocus;

  const UserCardWidget({
    @required this.user,
    @required this.isUserInFocus,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FeedbackPositionProvider>(context);
    final swipingDirection = provider.swipingDirection;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
      width: size.width * 0.95,
      decoration: BoxDecoration(
        border: GradientBorder.uniform(
          width: 3,
          gradient: LinearGradient(
            colors: [AppColors.photoGoldenLight, AppColors.photoGoldenDark],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(user.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0.5),
          ],
          gradient: LinearGradient(
            colors: [Colors.black12, Colors.black87],
            begin: Alignment.center,
            stops: [0.4, 1],
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 10,
              left: 10,
              bottom: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: buildUserInfo(user: user),
                  ),
                ],
              ),
            ),
            if (isUserInFocus) buildLikeBadge(swipingDirection)
          ],
        ),
      ),
    );
  }

  Widget buildLikeBadge(SwipingDirection swipingDirection) {
    final isSwipingRight = swipingDirection == SwipingDirection.right;
    final color = isSwipingRight ? AppColors.victory : AppColors.defeat;
    final angle = isSwipingRight ? -0.5 : 0.5;

    if (swipingDirection == SwipingDirection.none) {
      return Container();
    } else {
      return Positioned(
        top: 100,
        right: isSwipingRight ? null : 20,
        left: isSwipingRight ? 20 : null,
        child: Transform.rotate(
          angle: angle,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: color, width: 2),
            ),
            child: Text(
              isSwipingRight ? Strings.like : Strings.deslike,
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }
  }

  Widget buildUserInfo({@required User user}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}, ${user.age}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.designation,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      );
}
