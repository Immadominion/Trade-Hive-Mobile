import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cart =
          prefs.getStringList('ff_cart')?.map((path) => path.ref).toList() ??
              _cart;
    });
    _safeInit(() {
      _cartPriceSummary = prefs
              .getStringList('ff_cartPriceSummary')
              ?.map(double.parse)
              .toList() ??
          _cartPriceSummary;
    });
    _safeInit(() {
      _cartItems = prefs
              .getStringList('ff_cartItems')
              ?.map((x) {
                try {
                  return CartItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartItems;
    });
    _safeInit(() {
      _shippingOptions = prefs
              .getStringList('ff_shippingOptions')
              ?.map((x) {
                try {
                  return ShippingOptionsStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _shippingOptions;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
    prefs.setStringList('ff_cart', _value.map((x) => x.path).toList());
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void updateCartAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void insertAtIndexInCart(int _index, DocumentReference _value) {
    _cart.insert(_index, _value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  List<double> _cartPriceSummary = [];
  List<double> get cartPriceSummary => _cartPriceSummary;
  set cartPriceSummary(List<double> _value) {
    _cartPriceSummary = _value;
    prefs.setStringList(
        'ff_cartPriceSummary', _value.map((x) => x.toString()).toList());
  }

  void addToCartPriceSummary(double _value) {
    _cartPriceSummary.add(_value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartPriceSummary(double _value) {
    _cartPriceSummary.remove(_value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartPriceSummary(int _index) {
    _cartPriceSummary.removeAt(_index);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void updateCartPriceSummaryAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _cartPriceSummary[_index] = updateFn(_cartPriceSummary[_index]);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartPriceSummary(int _index, double _value) {
    _cartPriceSummary.insert(_index, _value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  List<CartItemStruct> _cartItems = [];
  List<CartItemStruct> get cartItems => _cartItems;
  set cartItems(List<CartItemStruct> _value) {
    _cartItems = _value;
    prefs.setStringList(
        'ff_cartItems', _value.map((x) => x.serialize()).toList());
  }

  void addToCartItems(CartItemStruct _value) {
    _cartItems.add(_value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeFromCartItems(CartItemStruct _value) {
    _cartItems.remove(_value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartItems(int _index) {
    _cartItems.removeAt(_index);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void updateCartItemsAtIndex(
    int _index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    _cartItems[_index] = updateFn(_cartItems[_index]);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartItems(int _index, CartItemStruct _value) {
    _cartItems.insert(_index, _value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  List<ShippingOptionsStruct> _shippingOptions = [
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Express Delivery\",\"description\":\"Get your shipment in 2-3 business days\",\"price\":\"25\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Standard Delivery\",\"description\":\"Get your shipment in 5-7 business days\",\"price\":\"10\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Free Delivery\",\"description\":\"Get your no rush option for recieving your package in 10-15 business days.\",\"price\":\"0\"}'))
  ];
  List<ShippingOptionsStruct> get shippingOptions => _shippingOptions;
  set shippingOptions(List<ShippingOptionsStruct> _value) {
    _shippingOptions = _value;
    prefs.setStringList(
        'ff_shippingOptions', _value.map((x) => x.serialize()).toList());
  }

  void addToShippingOptions(ShippingOptionsStruct _value) {
    _shippingOptions.add(_value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeFromShippingOptions(ShippingOptionsStruct _value) {
    _shippingOptions.remove(_value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromShippingOptions(int _index) {
    _shippingOptions.removeAt(_index);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void updateShippingOptionsAtIndex(
    int _index,
    ShippingOptionsStruct Function(ShippingOptionsStruct) updateFn,
  ) {
    _shippingOptions[_index] = updateFn(_shippingOptions[_index]);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInShippingOptions(
      int _index, ShippingOptionsStruct _value) {
    _shippingOptions.insert(_index, _value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  final _productListManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> productList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _productListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductListCache() => _productListManager.clear();
  void clearProductListCacheKey(String? uniqueKey) =>
      _productListManager.clearRequest(uniqueKey);

  final _transactionsManager = StreamRequestManager<List<TransactionsRecord>>();
  Stream<List<TransactionsRecord>> transactions({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TransactionsRecord>> Function() requestFn,
  }) =>
      _transactionsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTransactionsCache() => _transactionsManager.clear();
  void clearTransactionsCacheKey(String? uniqueKey) =>
      _transactionsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
