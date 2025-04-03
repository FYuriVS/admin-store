import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutChart extends StatelessWidget {
  final List<double> values;
  final List<Color> colors;

  const DonutChart({super.key, required this.values, required this.colors});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    const List<String> dataTitles = ["Caixa", "Entradas", "Saídas"];

    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.4,
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 180,
            height: 180,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PieChart(
                  PieChartData(
                    startDegreeOffset: 90,
                    sectionsSpace: 10,
                    centerSpaceRadius: 90,
                    sections: _generateSections(),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "R\$2305",
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "- 4.8% do mês anterior",
                          style: TextStyle(
                            fontSize: 10,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(values.length, (index) {
              return _buildLegendItem(
                context,
                colors[index],
                dataTitles[index],
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(BuildContext context, Color color, String text) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }

  List<PieChartSectionData> _generateSections() {
    return List.generate(values.length, (index) {
      return PieChartSectionData(
        value: values[index],
        color: colors[index],
        radius: 15,
        showTitle: false,
      );
    });
  }
}