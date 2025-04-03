import 'package:admin_store/features/finance/presentation/widgets/cash_history_list.dart';
import 'package:admin_store/features/finance/presentation/widgets/donut_chart.dart';
import 'package:flutter/material.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final List<CashHistoryItem> recentOrders = [
      CashHistoryItem(id: "01", type: 0, data: "16-06-2002", description: "teste"),
      CashHistoryItem(id: "02", type: 1, data: "10-06-2002",description: "teste123"),
      CashHistoryItem(id: "03", type: 0,  data: "08-06-2002",description: "descricao teste"),
      CashHistoryItem(id: "04", type: 0,  data: "08-06-2002",description: "teste1"),
      CashHistoryItem(id: "05", type: 1, data: "08-06-2002",description: "1234567890"),
    ];
    return Scaffold(
      appBar: AppBar(
        notificationPredicate: (_) => false,
        title: Text(
          "Financeiro",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))],
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DonutChart(
                  values: [0.5, 0.3, 0.2],
                  colors: [
                    Theme.of(context).colorScheme.onSurface,
                    Theme.of(context).colorScheme.secondaryContainer,
                    Theme.of(context).colorScheme.errorContainer,
                  ],
                ),
                Text("Histórico de caixa"),
                SizedBox(
                  child: CashHistoryList(cashHistoryList: recentOrders,),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        onPressed: (){} ,
        label: Row(
        children: [
          Icon(Icons.add),
          Text("Ações", style: TextStyle(color: Theme.of(context).colorScheme.onSecondaryContainer),),
        ],
      ),),
    );
  }
}
