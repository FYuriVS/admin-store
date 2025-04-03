import 'dart:ffi';

import 'package:flutter/material.dart';

class CashHistoryList extends StatelessWidget {
  final List<CashHistoryItem> cashHistoryList;

  const CashHistoryList({super.key, required this.cashHistoryList});
    @override
    Widget build(BuildContext context) {
      return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(height: 5),
        shrinkWrap: true,
        itemCount: cashHistoryList.length,
        itemBuilder: (context, index) {
          final cashHistoryItem = cashHistoryList[index];
          return Card.outlined(
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: cashHistoryItem.type == 0 ? Theme.of(context).colorScheme.secondaryContainer : Theme.of(context).colorScheme.errorContainer ,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 50,
                  width: 50,
                  child: Icon(
                    cashHistoryItem.type == 0 ? Icons.monetization_on_outlined : Icons.money_off,
                    color:Theme.of(context).colorScheme.onPrimaryFixedVariant,
                  ),
                ),
                title: Text("${cashHistoryItem.type == 0 ? "Entrada" : "Saída"}"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Data: ${cashHistoryItem.data}"),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          );
        },
      );
    }
}

class CashHistoryItem {
  final String id;
  final int type;
  final String description;
  final String data;
  CashHistoryItem({
    required this.id,
    required this.type,
    required this.description,
    required this.data,
  });
}


