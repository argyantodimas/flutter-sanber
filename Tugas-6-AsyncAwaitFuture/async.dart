import 'dart:async';

Future<void> main() async {
  print("saya dijalankan pertama");
  /*var timer = */Timer(Duration(seconds: 3), () =>print('saya dijalankan terakhir'));
  print("saya dijalankan kedua");

  //fetchUserOrder();
  print('Ambil Datanya');
  try {
    /*var order = */await fetchUserOrder();
    print('Awaiting user order...');
  } catch (err) {
    print('Caught error: $err');
  }

  print('Fetching user order...');
  print(await createOrderMessage());

  await printOrderMessage3();
}

Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2),
      () => print('Selamat datang Peserta bootcamp flutter'));
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder2();
  return "Your order is: ${order}";
}

Future<String> fetchUserOrder2() =>
  // Imagine that this function is
  // more complex and slow.
  Future.delayed(
    Duration(seconds: 2),
    () => 'Large Latte',
  );

Future<void> printOrderMessage3() async {
  try {
    var order = await fetchUserOrder3();
    print('Awaiting user order...');
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder3() {
  // Imagine that this function is more complex.
  var str = Future.delayed(
      Duration(seconds: 4),
      () => throw 'Cannot locate user order');
  return str;
}

//Future<void> main() async { ··· }
//Sekarang Anda memiliki fungsi async, Anda dapat menggunakan kata kunci await untuk menunggu hingga Future selesai:
//print(await createOrderMessage());

//contoh synchronous
// String createOrderMessage() {
//   var order = fetchUserOrder();
//   return 'Your order is: $order';
// }
// Future<String> fetchUserOrder() =>
//     // Imagine that this function is
//     // more complex and slow.
//     Future.delayed(
//       Duration(seconds: 2),
//       () => 'Large Latte',
//     );
// void main() {
//   print('Fetching user order...');
//   print(createOrderMessage());
// }
