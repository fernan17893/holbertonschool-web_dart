import '4-util.dart';
import 'dart:convert';


calculateTotal() async {
    try {
    return fetchUserData().then((data) {
        String id = json.decode(data)['id'];
        return fetchUserOrders(id).then((orders) async {
            double total = 0.0;
            for (String order in json.decode(orders)) {
                await fetchProductPrice(order).then((price) {
                    total += json.decode(price);
                });
            }
            return total;
        });
    });
    } catch (err) {
        return -1;  
    }  
}
