import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';

import 'config/config_mb.dart';
import 'my_repo.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    // 提取 ServiceA的引用实例
    final myRepo = getIt<MyRepo>();

    // 调用 ServiceA的方法
    printLog("myRepo.serviceA.moduleID()==${myRepo.serviceA.getModelId()}");
    // 调用 ServiceB的方法
    printLog("myRepo.serviceB.getText()==${myRepo.serviceB.getText()}");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                RouteUtils.navigation<ITestModelService>(RouteName.testProvider)
                    .getModelId()),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
