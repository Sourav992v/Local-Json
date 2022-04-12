import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_json/business_logic/bloc/local_json_cubit.dart';
import 'package:local_json/utils/resource_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocalJsonCubit>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Json'),
      ),
      body: SafeArea(
        child: BlocBuilder<LocalJsonCubit, LocalJsonState>(
          builder: (context, state) {
            if (state.status == ResourceStatus.loading) {
              return const CircularProgressIndicator();
            }
            return state.status == ResourceStatus.success
                ? SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: state.products?.data.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            ListTile(
                            leading:
                                Text(state.products?.data[index].name ?? ''),
                            title: Text(
                                state.products?.data[index].description ?? ''),
                            subtitle: Text(
                                state.products?.data[index].quantity ?? ''),
                          );
                        }),
                  )
                : const Center(child: Text('Error'));
          },
        ),
      ),
    );
  }
}
