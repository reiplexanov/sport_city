

class Rating {
  String user;
  int eval;

  Rating({
    this.user,
    this.eval
  });

  factory Rating.fromJson(Map<String, dynamic> data) {
   return Rating(
     eval: data["eval"],
     user: data["user"]
   );
  }
}



class Platfrom {

  final String id;
  final String title;
  final String info;
  final String nameCreate;
  final List<Rating> rating;
  final String urlimage;
  final int views;
  final List<String> fovorites;
  final String time;
  final List<String> tag;
  final List<double> geo;
  
  Platfrom({
    this.id,
    this.title,
    this.nameCreate,
    this.info,
    this.rating,
    this.urlimage,
    this.views,
    this.fovorites,
    this.time,
    this.tag,
    this.geo,
  });

  factory Platfrom.fromJson(Map<String, dynamic> data) {

    var fovoritesFromJson  = data['fovorites'];
    List<String> fovoritesList = new List<String>.from(fovoritesFromJson);

    var tagFromJson  = data['Tag'];
    List<String> tagList = new List<String>.from(tagFromJson);

    var listRating = data['rating'] as List;
    List<Rating> ratingList = listRating.map((i) => Rating.fromJson(i)).toList();

    var geoFromJson  = data['geo'];
    List<double> geoList = new List<double>.from(geoFromJson);

    return new Platfrom(
    id : data["id"],
    title : data["title"],
    nameCreate : data["nameCreate"],
    info : data["info"],
    rating: ratingList,
    urlimage : data["urlimage"],
    views : data["views"],
    fovorites : fovoritesList,
    time : data["time"],
    tag : tagList,
    geo : geoList,
    );
  }
}

class PlatformList{
  
  List<Platfrom> platfrom;

  PlatformList({
    this.platfrom
  });

  factory PlatformList.fromJson(List<dynamic> parsedJson){
    List<Platfrom> platfrom = new List<Platfrom>();
    platfrom = parsedJson.map((i)=>Platfrom.fromJson(i)).toList();

    return new PlatformList(
      platfrom: platfrom
    );
  }
}