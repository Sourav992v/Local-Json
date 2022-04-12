import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_json/home_screen.dart';

import 'business_logic/bloc/local_json_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalJsonCubit>(
      create: (context) => LocalJsonCubit(),
      child: const HomeScreen(),
    );
  }
}
