class User {
  String? _name;

  double? _persentaseMakan;
  double? _persentaseJajan;
  double? _persentaseKeinginan;
  double? _persentaseTabungan;

  double? _totalDana;
  double? _makan;
  double? _jajan;
  double? _keinginan;
  double? _tabungan;

  get totalDana => this._totalDana;

  get makan => this._makan;

  get jajan => this._jajan;

  get keinginan => this._keinginan;

  get tabungan => this._tabungan;

  User(this._name, this._persentaseMakan, this._persentaseJajan,
      this._persentaseKeinginan, this._persentaseTabungan, this._totalDana) {
    calculateAllocation();
  }

  void calculateAllocation() {
    _makan = _totalDana! * _persentaseMakan!;
    _jajan = _totalDana! * _persentaseJajan!;
    _keinginan = _totalDana! * _persentaseKeinginan!;
    _tabungan = _totalDana! * _persentaseTabungan!;
  }

  static User getDummyUser() {
    return User('Felix', 0.25, 0.15, 0.2, 0.4, 5000000);
  }

  
}
