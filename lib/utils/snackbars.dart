import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class AppSnackbars {
  static getAddItem(Item item) {
    Get.showSnackbar(GetSnackBar(
      title: 'Item adicionado',
      message: '${item.nome} adicionado ao carrinho',
      duration: const Duration(seconds: 1),
    ));
  }

  static getRemoveItem(Item item) {
    Get.showSnackbar(GetSnackBar(
      title: 'Item removido',
      message: '${item.nome} adicionado do carrinho',
      duration: const Duration(seconds: 1),
    ));
  }

  static getPayment() {
    Get.showSnackbar(const GetSnackBar(
      title: 'Compra finalizada!',
      message: 'Seu pedido chegará em breve.',
      duration: Duration(seconds: 2),
    ));
  }
}
