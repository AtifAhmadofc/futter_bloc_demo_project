part of 'search_products_bloc.dart';

@immutable
abstract class SearchProductsEvent {}


class StartSearchProductEvent extends SearchProductsEvent{
  String search;
  StartSearchProductEvent({required this.search});
}

class GetNewArrivalAndOnSaleProductsFromCategoriesEvent extends SearchProductsEvent{
  String newArrivalId;
  String onSaleId;
  GetNewArrivalAndOnSaleProductsFromCategoriesEvent({required this.onSaleId,required this.newArrivalId});
}