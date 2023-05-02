import 'package:flutter/material.dart';
import 'package:flutterinsta/screens/add_post_screen.dart';

import '../screens/feed_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('notify'),
  Text('personal'),
];
