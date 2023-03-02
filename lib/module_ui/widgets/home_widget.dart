import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_thgroup/module_bloc/bloc.dart';
import 'package:test_thgroup/module_bloc/bloc_event.dart';
import 'package:test_thgroup/module_ui/pages/detail_page.dart';
import 'package:test_thgroup/module_ui/widgets/list_colors.dart';

class HomeWidget extends StatefulWidget {
  final Future<List<dynamic>> state;
  HomeWidget({super.key, required this.state});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int clickedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.state,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PieChart(PieChartData(
              startDegreeOffset: 180,
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 5,
              centerSpaceRadius: 0,
              pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
                  setState(() {
                    if (event.isInterestedForInteractions &&
                        pieTouchResponse != null &&
                        pieTouchResponse.touchedSection != null) {
                      clickedIndex =
                          pieTouchResponse.touchedSection!.touchedSectionIndex;
                      BlocProvider.of<HomeBloc>(context).add(PressedDetailEvent(
                        name: snapshot.data![clickedIndex].name,
                        country: snapshot.data![clickedIndex].country,
                        description: snapshot.data![clickedIndex].description,
                        industry: snapshot.data![clickedIndex].industry,
                        sector: snapshot.data![clickedIndex].sector,
                      ));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    }
                    clickedIndex = -1;
                    return;
                  });
                },
              ),
              sections: List.generate(snapshot.data!.length, (index) {
                return PieChartSectionData(
                  color: listOfColors[index],
                  value: double.parse(
                      snapshot.data![index].revenuePerShareTTM.toString()),
                  title: snapshot.data![index].symbol,
                  radius: 150,
                  titlePositionPercentageOffset: 0.55,
                );
              })));
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
