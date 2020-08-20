class Drugs {
  String _name;
  String _lab;
  int _pre;
  double _ci;
  double _cmin;
  double _cmax;
  double _vap;
  double _prix;
  int _stab;

  Drugs(this._name, this._lab, this._pre, this._ci, this._cmin, this._cmax,
      this._vap, this._prix, this._stab);

  String get name => _name;
  String get lab => _lab;
  int get pre => _pre;
  double get ci => _ci;
  double get cmin => _cmin;
  double get cmax => _cmax;
  double get vap => _vap;
  double get prix => _prix;
  int get stab => _stab;

  set name(String newName) {
    this._name = newName;
  }

  set lab(String newLab) {
    this._lab = newLab;
  }

  set pre(int newPre) {
    if (newPre >= 1 && newPre <= 2) {
      this._pre = newPre;
    }
  }

  set ci(double newCi) {
    this._ci = newCi;
  }

  set cmin(double newCmin) {
    this._cmin = newCmin;
  }

  set cmax(double newCmax) {
    this._cmax = newCmax;
  }

  set vap(double newVap) {
    this._vap = newVap;
  }

  set prix(double newPrix) {
    this._prix = newPrix;
  }

  set stab(int newStab) {
    if (newStab >= 1 && newStab <= 2) {
      this._stab = newStab;
    }
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['lab'] = _lab;
    map['pre'] = _pre;
    map['ci'] = _ci;
    map['cmin'] = _cmin;
    map['cmax'] = _cmax;
    map['vap'] = _vap;
    map['prix'] = _prix;
    map['stab'] = _stab;

    return map;
  }

  Drugs.fromMapObject(Map<String, dynamic> map) {
    this._name = map['name'];
    this._lab = map['lab'];
    this._pre = map['pre'];
    this._ci = map['ci'];
    this._cmin = map['cmin'];
    this._cmax = map['cmax'];
    this._vap = map['vap'];
    this._prix = map['prix'];
    this._stab = map['lab'];
  }
}
