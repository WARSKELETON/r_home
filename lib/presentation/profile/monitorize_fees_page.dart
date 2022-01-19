import 'package:flutter/material.dart';
import 'package:r_home/presentation/core/app_bar_widget.dart';
import 'package:r_home/presentation/core/bottom_bar_widget.dart';
import 'package:r_home/presentation/core/r_home_color_scheme.dart';
import 'package:r_home/presentation/core/chart_legend_widget.dart';
import 'package:r_home/r_home_icon_icons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MonitorizeFeesPage extends StatelessWidget {
  const MonitorizeFeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Monitorize Fees"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
          child: Column(
            children: [
              const Text(
                "Here you can see how the fee money is being utilized in R-HOME.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: ChartLegendWidget(data: {
                  const Color(0xFFF7554C): "Investment",
                  const Color(0xFFF9A53C): "Maintenance",
                  Theme.of(context).colorScheme.primaryBlue: "Disputes",
                  Theme.of(context).colorScheme.primary: "Reserve"},
                  width: 125,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "5.000.000",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Icon(
                              RHomeIcon.token,
                              size: 20,
                              color: Theme.of(context).colorScheme.primaryBlue,
                            ),
                          )
                        ]
                      ),
                      const Text(
                        "Token Pool",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                    SfCircularChart(
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <DoughnutSeries<_PieData, String>>[
                      DoughnutSeries<_PieData, String>(
                        innerRadius: '75%',
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
                            "33%",
                            const Color(0xFFF7554C)
                          ),
                          _PieData(
                            "Reserve",
                            12,
                            "1%",
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