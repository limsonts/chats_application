import 'dart:convert';

// class chatlist {
//   List<String>? page3;

//   chatlist({this.page3});

//   chatlist.fromJson(Map<String, dynamic> json) {
//     page3 = json['page3'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['page3'] = this.page3;
//     return data;
//   }
// }


Map<String, dynamic> jsonData = jsonDecode('''
{
  "page3": [
    "Samosas.",
    "Chaat.",
    "Pani Puri.",
    "Bhelpuri.",
    "Kachori.",
    "Chole Bhature.",
    "Matar Kulcha.",
    "Dosa.",
    "Milk.",
    "Bread.",
    "Butter.",
    "Cheese.",
    "Yoghurt.",
    "Sandwich.",
    "Pancake.",
    "Pie.",
    "Cake.",
    "Lemon.",
    "Pizza.",
    "Carrots.",
    "Grapes.",
    "Eggs.",
    "Oats.",
    "Pancakes.",
    "Crepes.",
    "Waffles.",
    "Idli."
  ]
}
''') ;