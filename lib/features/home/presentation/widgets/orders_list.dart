import 'package:admin_store/features/home/presentation/widgets/metrics_card.dart';
import 'package:flutter/material.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key, required this.recentOrders});

  final List<Order> recentOrders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 5),
      shrinkWrap: true,
      itemCount: recentOrders.length,
      itemBuilder: (context, index) {
        final order = recentOrders[index];
        return Card.outlined(
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              title: Text("Pedido #${order.id} - ${order.customer}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Status: ${order.status}"),
                  Text("Data: ${order.data}"),
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
