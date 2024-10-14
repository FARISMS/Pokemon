// To parse this JSON data, do
//
//     final pekemonsListModels = pekemonsListModelsFromJson(jsonString);

import 'dart:convert';

List<PekemonsListModels> pekemonsListModelsFromJson(String str) => List<PekemonsListModels>.from(json.decode(str).map((x) => PekemonsListModels.fromJson(x)));


class PekemonsListModels {
  final List<Datum> data;
  final int page;
  final int pageSize;
  final int count;
  final int totalCount;

  PekemonsListModels({
    required this.data,
    required this.page,
    required this.pageSize,
    required this.count,
    required this.totalCount,
  });

  PekemonsListModels copyWith({
    List<Datum>? data,
    int? page,
    int? pageSize,
    int? count,
    int? totalCount,
  }) =>
      PekemonsListModels(
        data: data ?? this.data,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        count: count ?? this.count,
        totalCount: totalCount ?? this.totalCount,
      );

  factory PekemonsListModels.fromRawJson(String str) => PekemonsListModels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PekemonsListModels.fromJson(Map<String, dynamic> json) => PekemonsListModels(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    page: json["page"],
    pageSize: json["pageSize"],
    count: json["count"],
    totalCount: json["totalCount"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "page": page,
    "pageSize": pageSize,
    "count": count,
    "totalCount": totalCount,
  };
}

class Datum {
  final String id;
  final String name;
  final Supertype supertype;
  final List<String> subtypes;
  final String hp;
  final List<RetreatCost> types;
  // final String evolvesFrom;
  final List<Attack> attacks;
  final List<Resistance> weaknesses;
  // final List<Resistance> resistances;
  // final List<RetreatCost> retreatCost;
  // final int convertedRetreatCost;
  // final Set datumSet;
  final String number;
  final String artist;
  // final String rarity;
  // final String flavorText;
  final List<int> nationalPokedexNumbers;
  final Legalities legalities;
  final DatumImages images;
  // final Tcgplayer tcgplayer;
  // final Cardmarket cardmarket;
  // final List<String> evolvesTo;
  // final String level;
  // final List<Ability> abilities;

  Datum({
    required this.id,
    required this.name,
    required this.supertype,
    required this.subtypes,
    required this.hp,
    required this.types,
    // required this.evolvesFrom,
    required this.attacks,
    required this.weaknesses,
    // required this.resistances,
    // required this.retreatCost,
    // required this.convertedRetreatCost,
    // required this.datumSet,
    required this.number,
    required this.artist,
    // required this.rarity,
    // required this.flavorText,
    required this.nationalPokedexNumbers,
    required this.legalities,
    required this.images,
    // required this.tcgplayer,
    // required this.cardmarket,
    // required this.evolvesTo,
    // required this.level,
    // required this.abilities,
  });

  Datum copyWith({
    String? id,
    String? name,
    Supertype? supertype,
    List<String>? subtypes,
    String? hp,
    List<RetreatCost>? types,
    // String? evolvesFrom,
    List<Attack>? attacks,
    List<Resistance>? weaknesses,
    // List<Resistance>? resistances,
    // List<RetreatCost>? retreatCost,
    // int? convertedRetreatCost,
    // Set? datumSet,
    String? number,
    String? artist,
    // String? rarity,
    // String? flavorText,
    List<int>? nationalPokedexNumbers,
    Legalities? legalities,
    DatumImages? images,
    // Tcgplayer? tcgplayer,
    // Cardmarket? cardmarket,
    // List<String>? evolvesTo,
    // String? level,
    // List<Ability>? abilities,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        supertype: supertype ?? this.supertype,
        subtypes: subtypes ?? this.subtypes,
        hp: hp ?? this.hp,
        types: types ?? this.types,
        // evolvesFrom: evolvesFrom ?? this.evolvesFrom,
        attacks: attacks ?? this.attacks,
        weaknesses: weaknesses ?? this.weaknesses,
        // resistances: resistances ?? this.resistances,
        // retreatCost: retreatCost ?? this.retreatCost,
        // convertedRetreatCost: convertedRetreatCost ?? this.convertedRetreatCost,
        // datumSet: datumSet ?? this.datumSet,
        number: number ?? this.number,
        artist: artist ?? this.artist,
        // rarity: rarity ?? this.rarity,
        // flavorText: flavorText ?? this.flavorText,
        nationalPokedexNumbers: nationalPokedexNumbers ?? this.nationalPokedexNumbers,
        legalities: legalities ?? this.legalities,
        images: images ?? this.images,
        // tcgplayer: tcgplayer ?? this.tcgplayer,
        // cardmarket: cardmarket ?? this.cardmarket,
        // evolvesTo: evolvesTo ?? this.evolvesTo,
        // level: level ?? this.level,
        // abilities: abilities ?? this.abilities,
      );

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    supertype: supertypeValues.map[json["supertype"]]!,
    subtypes: List<String>.from(json["subtypes"].map((x) => x)),
    hp: json["hp"],
    types: List<RetreatCost>.from(json["types"].map((x) => retreatCostValues.map[x]!)),
    // evolvesFrom: json["evolvesFrom"],
    attacks: List<Attack>.from(json["attacks"].map((x) => Attack.fromJson(x))),
    weaknesses: List<Resistance>.from(json["weaknesses"].map((x) => Resistance.fromJson(x))),
    // resistances: List<Resistance>.from(json["resistances"].map((x) => Resistance.fromJson(x))),
    // retreatCost: List<RetreatCost>.from(json["retreatCost"].map((x) => retreatCostValues.map[x]!)),
    // convertedRetreatCost: json["convertedRetreatCost"],
    // datumSet: Set.fromJson(json["set"]),
    number: json["number"],
    artist: json["artist"],
    // rarity: json["rarity"],
    // flavorText: json["flavorText"],
    nationalPokedexNumbers: List<int>.from(json["nationalPokedexNumbers"].map((x) => x)),
    legalities: Legalities.fromJson(json["legalities"]),
    images: DatumImages.fromJson(json["images"]),
    // tcgplayer: Tcgplayer.fromJson(json["tcgplayer"]),
    // cardmarket: Cardmarket.fromJson(json["cardmarket"]),
    // evolvesTo: List<String>.from(json["evolvesTo"].map((x) => x)),
    // level: json["level"],
    // abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "supertype": supertypeValues.reverse[supertype],
    "subtypes": List<dynamic>.from(subtypes.map((x) => x)),
    "hp": hp,
    "types": List<dynamic>.from(types.map((x) => retreatCostValues.reverse[x])),
    // "evolvesFrom": evolvesFrom,
    "attacks": List<dynamic>.from(attacks.map((x) => x.toJson())),
    "weaknesses": List<dynamic>.from(weaknesses.map((x) => x.toJson())),
    // "resistances": List<dynamic>.from(resistances.map((x) => x.toJson())),
    // "retreatCost": List<dynamic>.from(retreatCost.map((x) => retreatCostValues.reverse[x])),
    // "convertedRetreatCost": convertedRetreatCost,
    // "set": datumSet.toJson(),
    "number": number,
    "artist": artist,
    // "rarity": rarity,
    // "flavorText": flavorText,
    "nationalPokedexNumbers": List<dynamic>.from(nationalPokedexNumbers.map((x) => x)),
    "legalities": legalities.toJson(),
    "images": images.toJson(),
    // "tcgplayer": tcgplayer.toJson(),
    // "cardmarket": cardmarket.toJson(),
    // "evolvesTo": List<dynamic>.from(evolvesTo.map((x) => x)),
    // "level": level,
    // "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
  };
}

class Ability {
  final String name;
  final String text;
  final String type;

  Ability({
    required this.name,
    required this.text,
    required this.type,
  });

  Ability copyWith({
    String? name,
    String? text,
    String? type,
  }) =>
      Ability(
        name: name ?? this.name,
        text: text ?? this.text,
        type: type ?? this.type,
      );

  factory Ability.fromRawJson(String str) => Ability.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
    name: json["name"],
    text: json["text"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "text": text,
    "type": type,
  };
}

class Attack {
  final String name;
  final List<RetreatCost> cost;
  final int convertedEnergyCost;
  final String damage;
  final String text;

  Attack({
    required this.name,
    required this.cost,
    required this.convertedEnergyCost,
    required this.damage,
    required this.text,
  });

  Attack copyWith({
    String? name,
    List<RetreatCost>? cost,
    int? convertedEnergyCost,
    String? damage,
    String? text,
  }) =>
      Attack(
        name: name ?? this.name,
        cost: cost ?? this.cost,
        convertedEnergyCost: convertedEnergyCost ?? this.convertedEnergyCost,
        damage: damage ?? this.damage,
        text: text ?? this.text,
      );

  factory Attack.fromRawJson(String str) => Attack.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attack.fromJson(Map<String, dynamic> json) => Attack(
    name: json["name"],
    cost: List<RetreatCost>.from(json["cost"].map((x) => retreatCostValues.map[x]!)),
    convertedEnergyCost: json["convertedEnergyCost"],
    damage: json["damage"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "cost": List<dynamic>.from(cost.map((x) => retreatCostValues.reverse[x])),
    "convertedEnergyCost": convertedEnergyCost,
    "damage": damage,
    "text": text,
  };
}

enum RetreatCost {
  COLORLESS,
  DARKNESS,
  DRAGON,
  GRASS,
  LIGHTNING,
  METAL
}

final retreatCostValues = EnumValues({
  "Colorless": RetreatCost.COLORLESS,
  "Darkness": RetreatCost.DARKNESS,
  "Dragon": RetreatCost.DRAGON,
  "Grass": RetreatCost.GRASS,
  "Lightning": RetreatCost.LIGHTNING,
  "Metal": RetreatCost.METAL
});

class Cardmarket {
  final String url;
  final UpdatedAt updatedAt;
  final Map<String, double> prices;

  Cardmarket({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });

  Cardmarket copyWith({
    String? url,
    UpdatedAt? updatedAt,
    Map<String, double>? prices,
  }) =>
      Cardmarket(
        url: url ?? this.url,
        updatedAt: updatedAt ?? this.updatedAt,
        prices: prices ?? this.prices,
      );

  factory Cardmarket.fromRawJson(String str) => Cardmarket.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cardmarket.fromJson(Map<String, dynamic> json) => Cardmarket(
    url: json["url"],
    updatedAt: updatedAtValues.map[json["updatedAt"]]!,
    prices: Map.from(json["prices"]).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "updatedAt": updatedAtValues.reverse[updatedAt],
    "prices": Map.from(prices).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

enum UpdatedAt {
  THE_20241013
}

final updatedAtValues = EnumValues({
  "2024/10/13": UpdatedAt.THE_20241013
});

class Set {
  final String id;
  final String name;
  final String series;
  final int printedTotal;
  final int total;
  final Legalities legalities;
  final String ptcgoCode;
  final String releaseDate;
  final String updatedAt;
  final SetImages images;

  Set({
    required this.id,
    required this.name,
    required this.series,
    required this.printedTotal,
    required this.total,
    required this.legalities,
    required this.ptcgoCode,
    required this.releaseDate,
    required this.updatedAt,
    required this.images,
  });

  Set copyWith({
    String? id,
    String? name,
    String? series,
    int? printedTotal,
    int? total,
    Legalities? legalities,
    String? ptcgoCode,
    String? releaseDate,
    String? updatedAt,
    SetImages? images,
  }) =>
      Set(
        id: id ?? this.id,
        name: name ?? this.name,
        series: series ?? this.series,
        printedTotal: printedTotal ?? this.printedTotal,
        total: total ?? this.total,
        legalities: legalities ?? this.legalities,
        ptcgoCode: ptcgoCode ?? this.ptcgoCode,
        releaseDate: releaseDate ?? this.releaseDate,
        updatedAt: updatedAt ?? this.updatedAt,
        images: images ?? this.images,
      );

  factory Set.fromRawJson(String str) => Set.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Set.fromJson(Map<String, dynamic> json) => Set(
    id: json["id"],
    name: json["name"],
    series: json["series"],
    printedTotal: json["printedTotal"],
    total: json["total"],
    legalities: Legalities.fromJson(json["legalities"]),
    ptcgoCode: json["ptcgoCode"],
    releaseDate: json["releaseDate"],
    updatedAt: json["updatedAt"],
    images: SetImages.fromJson(json["images"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "series": series,
    "printedTotal": printedTotal,
    "total": total,
    "legalities": legalities.toJson(),
    "ptcgoCode": ptcgoCode,
    "releaseDate": releaseDate,
    "updatedAt": updatedAt,
    "images": images.toJson(),
  };
}

class SetImages {
  final String symbol;
  final String logo;

  SetImages({
    required this.symbol,
    required this.logo,
  });

  SetImages copyWith({
    String? symbol,
    String? logo,
  }) =>
      SetImages(
        symbol: symbol ?? this.symbol,
        logo: logo ?? this.logo,
      );

  factory SetImages.fromRawJson(String str) => SetImages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SetImages.fromJson(Map<String, dynamic> json) => SetImages(
    symbol: json["symbol"],
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "symbol": symbol,
    "logo": logo,
  };
}

class Legalities {
  final Expanded unlimited;
  final Expanded expanded;

  Legalities({
    required this.unlimited,
    required this.expanded,
  });

  Legalities copyWith({
    Expanded? unlimited,
    Expanded? expanded,
  }) =>
      Legalities(
        unlimited: unlimited ?? this.unlimited,
        expanded: expanded ?? this.expanded,
      );

  factory Legalities.fromRawJson(String str) => Legalities.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Legalities.fromJson(Map<String, dynamic> json) => Legalities(
    unlimited: expandedValues.map[json["unlimited"]]!,
    expanded: expandedValues.map[json["expanded"] ?? json["unlimited"]]!,
  );

  Map<String, dynamic> toJson() => {
    "unlimited": expandedValues.reverse[unlimited],
    "expanded": expandedValues.reverse[expanded],
  };
}

enum Expanded {
  LEGAL
}

final expandedValues = EnumValues({
  "Legal": Expanded.LEGAL
});

class DatumImages {
  final String small;
  final String large;

  DatumImages({
    required this.small,
    required this.large,
  });

  DatumImages copyWith({
    String? small,
    String? large,
  }) =>
      DatumImages(
        small: small ?? this.small,
        large: large ?? this.large,
      );

  factory DatumImages.fromRawJson(String str) => DatumImages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumImages.fromJson(Map<String, dynamic> json) => DatumImages(
    small: json["small"],
    large: json["large"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "large": large,
  };
}

class Resistance {
  final String type;
  final String value;

  Resistance({
    required this.type,
    required this.value,
  });

  Resistance copyWith({
    String? type,
    String? value,
  }) =>
      Resistance(
        type: type ?? this.type,
        value: value ?? this.value,
      );

  factory Resistance.fromRawJson(String str) => Resistance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Resistance.fromJson(Map<String, dynamic> json) => Resistance(
    type: json["type"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "value": value,
  };
}

enum Supertype {
  POKMON
}

final supertypeValues = EnumValues({
  "Pokémon": Supertype.POKMON
});

class Tcgplayer {
  final String url;
  final UpdatedAt? updatedAt;
  final Prices prices;

  Tcgplayer({
    required this.url,
     this.updatedAt,
    required this.prices,
  });

  Tcgplayer copyWith({
    String? url,
    UpdatedAt? updatedAt,
    Prices? prices,
  }) =>
      Tcgplayer(
        url: url ?? this.url,
        updatedAt: updatedAt ?? this.updatedAt,
        prices: prices ?? this.prices,
      );

  factory Tcgplayer.fromRawJson(String str) => Tcgplayer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tcgplayer.fromJson(Map<String, dynamic> json) => Tcgplayer(
    url: json["url"],
    updatedAt: updatedAtValues.map[json["updatedAt"]],
    prices: Prices.fromJson(json["prices"]),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "updatedAt": updatedAtValues.reverse[updatedAt],
    "prices": prices.toJson(),
  };
}

class Prices {
  final Holofoil holofoil;
  final Holofoil reverseHolofoil;
  final Holofoil? normal;

  Prices({
    required this.holofoil,
    required this.reverseHolofoil,
     this.normal,
  });

  Prices copyWith({
    Holofoil? holofoil,
    Holofoil? reverseHolofoil,
    Holofoil? normal,
  }) =>
      Prices(
        holofoil: holofoil ?? this.holofoil,
        reverseHolofoil: reverseHolofoil ?? this.reverseHolofoil,
        normal: normal ?? this.normal,
      );

  factory Prices.fromRawJson(String str) => Prices.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prices.fromJson(Map<String, dynamic> json) => Prices(
    holofoil: Holofoil.fromJson(json["holofoil"]),
    reverseHolofoil: Holofoil.fromJson(json["reverseHolofoil"]),
    normal: Holofoil.fromJson(json["normal"]),
  );

  Map<String, dynamic> toJson() => {
    "holofoil": holofoil.toJson(),
    "reverseHolofoil": reverseHolofoil.toJson(),
    "normal": normal?.toJson(),
  };
}

class Holofoil {
  final double low;
  final double mid;
  final double high;
  final double market;
  final double directLow;

  Holofoil({
    required this.low,
    required this.mid,
    required this.high,
    required this.market,
    required this.directLow,
  });

  Holofoil copyWith({
    double? low,
    double? mid,
    double? high,
    double? market,
    double? directLow,
  }) =>
      Holofoil(
        low: low ?? this.low,
        mid: mid ?? this.mid,
        high: high ?? this.high,
        market: market ?? this.market,
        directLow: directLow ?? this.directLow,
      );

  factory Holofoil.fromRawJson(String str) => Holofoil.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Holofoil.fromJson(Map<String, dynamic> json) => Holofoil(
    low: json["low"]?.toDouble(),
    mid: json["mid"]?.toDouble(),
    high: json["high"]?.toDouble(),
    market: json["market"]?.toDouble(),
    directLow: json["directLow"]?.toDouble() ?? 0.0,
  );

  Map<String, dynamic> toJson() => {
    "low": low,
    "mid": mid,
    "high": high,
    "market": market,
    "directLow": directLow,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
