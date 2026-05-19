import 'package:flutter/material.dart';

import '../shared/component/components.dart';
import 'login_views.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        iconsLeadin: Icons.menu,
        title: 'Login',
        iconsAcction1: Icons.search,
        iconsAcction2: Icons.notifications,
      ),
      body: LoginViews(),
    );
  }
}
