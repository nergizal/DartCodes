import 'dart:math';

class VeriTabaniIslemleri {
  //Veri tabanına bağlanmak için gerekenler


  //_kullaniciAdi ve _sifre başına _ konulmuş, yani bu değişkenler private (özel).
  // Sadece bu dosya içerisinden erişilebilir.
  //Dışarıdan db._kullaniciAdi gibi ulaşamazsın. Bu da güvenlik sağlar.
  String _kullaniciAdi = "bilal";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarmi()) {
      if (_kullaniciAdi == "bilal" && _sifre == "123456") {
        //başarılı giriş
        return true;
      } else {
        //başarısız giriş
        return false;
      }
    } else {
      return false;
    }
  }

  bool _internetVarmi() {
    bool baglanti = Random().nextBool();
    if (baglanti) {
      //true, false
      return true;
    } else {
      return false;
    }
  }
}
