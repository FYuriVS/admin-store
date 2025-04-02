import 'package:flutter/material.dart';

class MetricsCard extends StatelessWidget {
  const MetricsCard({super.key, required this.kpi, required this.index});

  final KpiData kpi;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * .45,
      height: screenSize.width * .4,
      child: Card.outlined(
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kpi.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    _returnIcon(index),
                    size: 24,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    kpi.value,
                    style: TextStyle(
                      fontSize: 38,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _returnIcon(int index) {
    switch (index) {
      case 0:
        return Icons.add_box_outlined;
      case 1:
        return Icons.check_box_outlined;
      case 2:
        return Icons.check_box_outline_blank;
      case 3:
        return Icons.donut_large;
      default:
        return Icons.abc;
    }
  }
}

class KpiData {
  final String title;
  final String value;
  KpiData({required this.title, required this.value});
}

class Order {
  final String id;
  final String customer;
  final String status;
  final String data;
  Order({
    required this.id,
    required this.customer,
    required this.status,
    required this.data,
  });
}
