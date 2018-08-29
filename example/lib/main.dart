// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'animate_camera.dart';
import 'map_ui.dart';
import 'move_camera.dart';
import 'page.dart';
import 'place_marker.dart';

final List<Page> _allPages = <Page>[
  MapUiPage(),
  AnimateCameraPage(),
  MoveCameraPage(),
  PlaceMarkerPage(),
];

class MapsDemo extends StatelessWidget {
  void _pushPage(BuildContext context, Page page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text(page.title)),
              body: page,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GoogleMaps examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) {
          return ListTile(
            leading: _allPages[index].leading,
            title: Text(_allPages[index].title),
            onTap: () => _pushPage(context, _allPages[index]),
          );
        },
      ),
    );
  }
}

void main() {
  final List<NavigatorObserver> observers = <NavigatorObserver>[];
  runApp(MaterialApp(home: MapsDemo(), navigatorObservers: observers));
}