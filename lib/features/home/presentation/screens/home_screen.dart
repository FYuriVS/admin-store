import 'package:admin_store/features/home/presentation/widgets/line_chart.dart';
import 'package:admin_store/features/home/presentation/widgets/metrics_card.dart';
import 'package:admin_store/features/home/presentation/widgets/orders_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<KpiData> kpiList = [
    KpiData(title: "Cadastrados", value: "928"),
    KpiData(title: "Ativos", value: "35"),
    KpiData(title: "Inativos", value: "34"),
    KpiData(title: "Estoque", value: "5"),
  ];

  final List<Order> recentOrders = [
    Order(id: "01", customer: "João", status: "Faturado", data: "16-06-2002"),
    Order(id: "02", customer: "Maria", status: "Entregue", data: "10-06-2002"),
    Order(id: "03", customer: "Pedro", status: "Faturado", data: "08-06-2002"),
    Order(id: "04", customer: "João", status: "Faturado", data: "08-06-2002"),
    Order(id: "05", customer: "Enzo", status: "Faturado", data: "08-06-2002"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.add),
        title: Text(
          "Dashboard",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        notificationPredicate: (notification) => false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Produtos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.push("/products");
                  },
                  child: Text(
                    "Ver mais",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MetricsCard(kpi: kpiList[0], index: 0),
                    MetricsCard(kpi: kpiList[1], index: 1),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MetricsCard(kpi: kpiList[2], index: 2),
                    MetricsCard(kpi: kpiList[3], index: 3),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Vendas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Ver mais",
                        style: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: LineChartGraph(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pedidos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ver mais",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: OrdersList(recentOrders: recentOrders),
            ),
          ],
        ),
      ),
    );
  }
}
