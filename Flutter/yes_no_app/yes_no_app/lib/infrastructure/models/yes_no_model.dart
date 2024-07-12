import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
    String answer;
    bool forced;
    String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonToMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessageEntity() => Message(
       text: answer == "yes" ? "yes" : "no",
      fromWho: FromWho.her,
      imageUrl: image
    );
}



//Tranformar la imagen con esto de la api 
//Que solo regrese yer or no 