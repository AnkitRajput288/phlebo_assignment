import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'Screens/home_screen.dart';
import 'utils/connectivity_widget_wrapper.dart';

final providerContainerGlobal = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatefulHookConsumerWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends ConsumerState<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return const ConnectivityWidgetWrapper(
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
