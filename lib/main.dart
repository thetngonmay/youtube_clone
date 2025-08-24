import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/bloc/setting/setting_bloc.dart';
import 'package:youtube_clone/ui/pages/maintab/main_tab_screen.dart';

import 'bloc/app_bloc_observer.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SettingBloc>(create: (context)=> SettingBloc()),

        ],
        child: MaterialApp(
          title: 'Tng Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          ),
          home: MainTabScreen(),
        )
    );
  }
}
