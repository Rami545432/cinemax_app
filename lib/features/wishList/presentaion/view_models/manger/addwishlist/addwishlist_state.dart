part of 'addwishlist_cubit.dart';

@immutable
abstract class AddwishlistState {}

class AddwishlistInitial extends AddwishlistState {}

class AddwishlistLoaded extends AddwishlistState {
  final List<WishModel> items;

  AddwishlistLoaded({required this.items});
}

class AddwishlistRemoved extends AddwishlistState {
  final List<WishModel> wishList;

  AddwishlistRemoved({required this.wishList});
}
