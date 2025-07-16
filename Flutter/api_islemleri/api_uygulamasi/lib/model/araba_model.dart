// To parse this JSON data, do
//
//     final arabamodel = arabamodelFromJson(jsonString);

import 'dart:convert';
//içerisi string jsona dönüştürecek
Arabamodel arabamodelFromJson(String str) => Arabamodel.fromJson(json.decode(str));
//veritabanına vrei kaydederken,gönderirken
String arabamodelToJson(Arabamodel data) => json.encode(data.toJson());
//değişkenler
class Arabamodel {
    final String arabaAdi;
    final String ulke;
    final String kurulusYili;
    final List<Model> model;
//model ayrı bir sınıf olduğu için
    Arabamodel({
        required this.arabaAdi,
        required this.ulke,
        required this.kurulusYili,
        required this.model,
    });
//içerisine bir map vermiş arabamodele dönüştürecek, veriyi dönüştüren
//mapi jsondan çıkartıyor
    factory Arabamodel.fromJson(Map<String, dynamic> json) => Arabamodel(
        arabaAdi: json["araba_adi"],
        ulke: json["ulke"],
        kurulusYili: json["kurulus_yili"],
        model: List<Model>.from(json["model"].map((x) => Model.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "araba_adi": arabaAdi,
        "ulke": ulke,
        "kurulus_yili": kurulusYili,
        "model": List<dynamic>.from(model.map((x) => x.toJson())),
    };
}

class Model {
    final String modelAdi;
    final String fiyat;
    final bool benzinli;

    Model({
        required this.modelAdi,
        required this.fiyat,
        required this.benzinli,
    });

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        modelAdi: json["model_adi"],
        fiyat: json["fiyat"],
        benzinli: json["benzinli"],
    );

    Map<String, dynamic> toJson() => {
        "model_adi": modelAdi,
        "fiyat": fiyat,
        "benzinli": benzinli,
    };
}
