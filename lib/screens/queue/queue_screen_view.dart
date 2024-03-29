import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_application/screens/queue/queue_screen_viewmodel.dart';

class QueueScreen extends StatelessWidget {
  const QueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(
            child: Column(
              children: [
                Image.asset( context.watch<QueueScreenViewModel>().imageAssetPath ),
                Text( context.watch<QueueScreenViewModel>().mainTitle ),
                Text( context.watch<QueueScreenViewModel>().subTitle ),
              ],
            )
          ),
        );
  }
}
