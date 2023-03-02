import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_thgroup/module_bloc/bloc.dart';
import 'package:test_thgroup/module_bloc/bloc_state.dart';
import 'package:test_thgroup/module_ui/widgets/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test TN-Group"),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is LoadedHomeState) {
            return HomeWidget(state: state.company);
          }
          return Center(child: CircularProgressIndicator());
        }));
  }
}
