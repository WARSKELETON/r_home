import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/chart_legend_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MonitorizeFeesPage extends StatelessWidget {
  const MonitorizeFeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Monitorize Fees"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            children: [
              const Text(
                "Here you can see where the fee money is being utilized in the platform.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: ChartLegendWidget(data: {
                  const Color(0xFFF7554C): "Investment",
                  const Color(0xFFF9A53C): "Maintenance",
                  Theme.of(context).colorScheme.primaryBlue: "Disputes",
                  Theme.of(context).colorScheme.primary: "Reserve"}
                ),
              ),
              SfCircularChart(
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <PieSeries<_PieData, String>>[
                  PieSeries<_PieData, String>(
                    dataSource: [
                      _PieData(
                        "Investment",
                        343,
                        "33%",
                        Theme.of(context).colorScheme.primaryBlue
                      ),
                      _PieData(
                        "Maintenance",
                        424,
                        "33%",
                        const Color(0xFFF9A53C)
                      ),
                      _PieData(
                        "Disputes",
                        333,
                        "1%",
                        const Color(0xFFF7554C)
                      ),
                      _PieData(
                        "Reserve",
                        12,
                        "33%",
                        Theme.of(context).colorScheme.primary
                      ),
                    ],
                    xValueMapper: (_PieData data, _) => data.xData,
                    yValueMapper: (_PieData data, _) => data.yData,
                    dataLabelMapper: (_PieData data, _) => data.text,
                    pointColorMapper: (_PieData data,  _) => data.color,
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      labelPosition: ChartDataLabelPosition.outside,
                    )
                  ),
                ]
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}

class _PieData {
 _PieData(this.xData, this.yData, this.text, this.color);
 final String xData;
 final num yData;
 final String text;
 final Color color;
}