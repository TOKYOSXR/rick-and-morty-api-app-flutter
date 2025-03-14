class Character {
  final int id;
  final String name;
  final String num;
  final String image;
  final String type;
   
  Character({
    required this.id,
    required this.name,
    required this.num,
    required this.image,
    required this.type
  });

  factory Character.fromJson(Map<String,dynamic> json){
    return Character(
      id: json['id'],
      name: json['name'],
      num: json['num'],
      image: json['img'],
      type: json['type']
    );
  }

}


