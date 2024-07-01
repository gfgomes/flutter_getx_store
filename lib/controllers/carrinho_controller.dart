import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class CarrinhoController extends GetxController {
  RxList<Item> carrinho = <Item>[].obs;
  RxDouble total = 0.0.obs;

  void addToCart(Item item) {
    carrinho.add(item);

    calculateTotal();
  }

  void removeFromCart(Item item) {
    carrinho.remove(item);

    calculateTotal();
  }

  void calculateTotal() {
    total.value = 0.0;
    for (var item in carrinho) {
      total.value += item.preco;
    }
  }
}
