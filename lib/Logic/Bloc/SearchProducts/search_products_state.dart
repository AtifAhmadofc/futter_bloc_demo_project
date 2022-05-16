part of 'search_products_bloc.dart';

@immutable
abstract class SearchProductsState {}

class SearchProductsInitialState extends SearchProductsState {}
class SearchProductsLoadingState extends SearchProductsState {}
class SearchProductsLoadedState extends SearchProductsState {
  List<ProductsModel> productModelList;
  SearchProductsLoadedState({required this.productModelList});
}


class GetNewArrivalAndOnSaleProductsLoadedState extends SearchProductsState {
  List<ProductsModel> onSaleProductModelList;
  List<ProductsModel> newArrivalProductModelList;
  GetNewArrivalAndOnSaleProductsLoadedState({required this.newArrivalProductModelList,required this.onSaleProductModelList});
}