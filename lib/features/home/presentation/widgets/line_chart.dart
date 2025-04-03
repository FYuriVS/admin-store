import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LineChartGraph extends StatefulWidget {
  const LineChartGraph({super.key});

  @override
  State<LineChartGraph> createState() => _LineChartGraphState();
}

class _LineChartGraphState extends State<LineChartGraph> {
  List<(DateTime, double)>? _bitcoinPriceHistory;
  late TransformationController _transformationController;

  @override
  void initState() {
    _reloadData();
    _transformationController = TransformationController();
    super.initState();
  }

  void _reloadData() async {
    final dataStr = await rootBundle.loadString(
      'assets/data/btc_last_year_price.json',
    );
    final json = jsonDecode(dataStr) as Map<String, dynamic>;
    setState(() {
      _bitcoinPriceHistory =
          (json['prices'] as List).map((item) {
            final timestamp = item[0] as int;
            final price = item[1] as double;
            return (DateTime.fromMillisecondsSinceEpoch(timestamp), price);
          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AspectRatio(
          aspectRatio: 1.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: LineChart(
              transformationConfig: FlTransformationConfig(
                scaleAxis: FlScaleAxis.horizontal,
                minScale: 1.0,
                maxScale: 25.0,
                panEnabled: true,
                trackpadScrollCausesScale: true,
                scaleEnabled: true,
                transformationController: _transformationController,
              ),
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots:
                        _bitcoinPriceHistory?.asMap().entries.map((e) {
                          final index = e.key;
                          final item = e.value;
                          final value = item.$2;
                          return FlSpot(index.toDouble(), value);
                        }).toList() ??
                        [],
                    dotData: const FlDotData(show: false),
                    color: Theme.of(context).colorScheme.primary,
                    barWidth: 1,
                    shadow: Shadow(
                      color: Theme.of(context).colorScheme.secondary,
                      blurRadius: 2,
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.secondaryContainer,
                          Theme.of(context).colorScheme.onSurface,
                        ],
                        stops: const [0.5, 1.0],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
                lineTouchData: LineTouchData(
                  touchSpotThreshold: 5,
                  getTouchLineStart: (_, __) => -double.infinity,
                  getTouchLineEnd: (_, __) => double.infinity,
                  getTouchedSpotIndicator: (
                    LineChartBarData barData,
                    List<int> spotIndexes,
                  ) {
                    return spotIndexes.map((spotIndex) {
                      return TouchedSpotIndicatorData(
                        FlLine(
                          color: Theme.of(context).colorScheme.error,
                          strokeWidth: 1.5,
                          dashArray: [8, 2],
                        ),
                        FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) {
                            return FlDotCirclePainter(
                              radius: 6,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              strokeWidth: 0,
                              strokeColor:
                                  Theme.of(context).colorScheme.inversePrimary,
                            );
                          },
                        ),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                      return touchedBarSpots.map((barSpot) {
                        final price = barSpot.y;
                        final date =
                            _bitcoinPriceHistory![barSpot.x.toInt()].$1;
                        return LineTooltipItem(
                          '',
                          TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '${date.year}/${date.month}/${date.day}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: price.toString(),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      }).toList();
                    },
                    getTooltipColor:
                        (LineBarSpot barSpot) =>
                            Theme.of(context).colorScheme.primary,
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: const AxisTitles(
                    drawBelowEverything: true,
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 38,
                      maxIncluded: false,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        final date = _bitcoinPriceHistory![value.toInt()].$1;
                        return SideTitleWidget(
                          meta: meta,
                          child: Transform.rotate(
                            angle: -45 * 3.14 / 180,
                            child: Text(
                              '${date.month}/${date.day}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              duration: Duration.zero,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }
}
