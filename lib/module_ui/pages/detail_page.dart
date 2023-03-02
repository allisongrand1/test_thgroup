import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_thgroup/module_bloc/bloc.dart';
import 'package:test_thgroup/module_bloc/bloc_event.dart';
import 'package:test_thgroup/module_bloc/bloc_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
                BlocProvider.of<HomeBloc>(context).add(HomePageEvent());
              }),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          if (state is LoadedDetailState) {
            return ListView.builder(
                itemCount: state.details.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      state.details[index],
                    ),
                  );
                });
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }));
  }
}
