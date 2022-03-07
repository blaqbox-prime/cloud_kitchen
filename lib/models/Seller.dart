import 'package:cloud_kitchen/models/Address.dart';
import 'package:cloud_kitchen/models/Menu.dart';

class Seller {
  // members
  late final String _id;
  late final String _title;
  late final String _owner;
  late final Menu? _menu;
  late final String? _email;
  late final String? _logo;
  late final Address? _address;

  // Methods
  // Constructors
  Seller(
    this._id,
    this._title,
    this._owner,
    this._menu,
    this._logo,
    this._email,
    this._address,
  );

  Seller.FromAuth(Map<String, dynamic> data) {
    this._title = data['title'];
    this._owner = data['owner'];
    this._menu = data['menu'];
    this._logo = data['logo'];
    this._email = data['email'];
    this._address = data['address'];
  }
  //
}
