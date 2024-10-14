// To parse this JSON data, do
//
//     final pokemonDetailsModels = pokemonDetailsModelsFromJson(jsonString);

import 'dart:convert';

PokemonDetailsModels pokemonDetailsModelsFromJson(String str) => PokemonDetailsModels.fromJson(json.decode(str));



class PokemonDetailsModels {
  final List<Details> data;
  final int page;
  final int pageSize;
  final int count;
  final int totalCount;

  PokemonDetailsModels({
    required this.data,
    required this.page,
    required this.pageSize,
    required this.count,
    required this.totalCount,
  });

  PokemonDetailsModels copyWith({
    List<Details>? data,
    int? page,
    int? pageSize,
    int? count,
    int? totalCount,
  }) =>
      PokemonDetailsModels(
        data: data ?? this.data,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        count: count ?? this.count,
        totalCount: totalCount ?? this.totalCount,
      );

  factory PokemonDetailsModels.fromRawJson(String str) => PokemonDetailsModels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PokemonDetailsModels.fromJson(Map<String, dynamic> json) => PokemonDetailsModels(
    data: List<Details>.from(json["data"].map((x) => Details.fromJson(x))),
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

class Details {
  final String id;
  final String name;
  final Supertype supertype;
  final List<Subtype> subtypes;
  final String hp;
  final List<RetreatCost> types;
  final List<String> evolvesTo;
  final List<String> rules;
  final List<Attack> attacks;
  final List<Resistance> weaknesses;
  final List<RetreatCost> retreatCost;
  final int convertedRetreatCost;
  final Set datumSet;
  final String number;
  final String artist;
  final Rarity rarity;
  final List<int> nationalPokedexNumbers;
  final DatumLegalities legalities;
  final DatumImages images;
  final Tcgplayer tcgplayer;
  final Cardmarket cardmarket;
  final String evolvesFrom;
  final List<Ability> abilities;
  final String flavorText;
  final List<Resistance> resistances;

  Details({
    required this.id,
    required this.name,
    required this.supertype,
    required this.subtypes,
    required this.hp,
    required this.types,
    required this.evolvesTo,
    required this.rules,
    required this.attacks,
    required this.weaknesses,
    required this.retreatCost,
    required this.convertedRetreatCost,
    required this.datumSet,
    required this.number,
    required this.artist,
    required this.rarity,
    required this.nationalPokedexNumbers,
    required this.legalities,
    required this.images,
    required this.tcgplayer,
    required this.cardmarket,
    required this.evolvesFrom,
    required this.abilities,
    required this.flavorText,
    required this.resistances,
  });

  Details copyWith({
    String? id,
    String? name,
    Supertype? supertype,
    List<Subtype>? subtypes,
    String? hp,
    List<RetreatCost>? types,
    List<String>? evolvesTo,
    List<String>? rules,
    List<Attack>? attacks,
    List<Resistance>? weaknesses,
    List<RetreatCost>? retreatCost,
    int? convertedRetreatCost,
    Set? datumSet,
    String? number,
    String? artist,
    Rarity? rarity,
    List<int>? nationalPokedexNumbers,
    DatumLegalities? legalities,
    DatumImages? images,
    Tcgplayer? tcgplayer,
    Cardmarket? cardmarket,
    String? evolvesFrom,
    List<Ability>? abilities,
    String? flavorText,
    List<Resistance>? resistances,
  }) =>
      Details(
        id: id ?? this.id,
        name: name ?? this.name,
        supertype: supertype ?? this.supertype,
        subtypes: subtypes ?? this.subtypes,
        hp: hp ?? this.hp,
        types: types ?? this.types,
        evolvesTo: evolvesTo ?? this.evolvesTo,
        rules: rules ?? this.rules,
        attacks: attacks ?? this.attacks,
        weaknesses: weaknesses ?? this.weaknesses,
        retreatCost: retreatCost ?? this.retreatCost,
        convertedRetreatCost: convertedRetreatCost ?? this.convertedRetreatCost,
        datumSet: datumSet ?? this.datumSet,
        number: number ?? this.number,
        artist: artist ?? this.artist,
        rarity: rarity ?? this.rarity,
        nationalPokedexNumbers: nationalPokedexNumbers ?? this.nationalPokedexNumbers,
        legalities: legalities ?? this.legalities,
        images: images ?? this.images,
        tcgplayer: tcgplayer ?? this.tcgplayer,
        cardmarket: cardmarket ?? this.cardmarket,
        evolvesFrom: evolvesFrom ?? this.evolvesFrom,
        abilities: abilities ?? this.abilities,
        flavorText: flavorText ?? this.flavorText,
        resistances: resistances ?? this.resistances,
      );

  factory Details.fromRawJson(String str) => Details.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Details.fromJson(Map<String, dynamic> json) => Details(
    id: json["id"],
    name: json["name"],
    supertype: supertypeValues.map[json["supertype"]]!,
    subtypes: List<Subtype>.from(json["subtypes"].map((x) => subtypeValues.map[x]!)),
    hp: json["hp"],
    types: List<RetreatCost>.from(json["types"].map((x) => retreatCostValues.map[x]!)),
    evolvesTo: List<String>.from(json["evolvesTo"].map((x) => x)),
    rules: List<String>.from(json["rules"].map((x) => x)),
    attacks: List<Attack>.from(json["attacks"].map((x) => Attack.fromJson(x))),
    weaknesses: List<Resistance>.from(json["weaknesses"].map((x) => Resistance.fromJson(x))),
    retreatCost: List<RetreatCost>.from(json["retreatCost"].map((x) => retreatCostValues.map[x]!)),
    convertedRetreatCost: json["convertedRetreatCost"],
    datumSet: Set.fromJson(json["set"]),
    number: json["number"],
    artist: json["artist"],
    rarity: rarityValues.map[json["rarity"]]!,
    nationalPokedexNumbers: List<int>.from(json["nationalPokedexNumbers"].map((x) => x)),
    legalities: DatumLegalities.fromJson(json["legalities"]),
    images: DatumImages.fromJson(json["images"]),
    tcgplayer: Tcgplayer.fromJson(json["tcgplayer"]),
    cardmarket: Cardmarket.fromJson(json["cardmarket"]),
    evolvesFrom: json["evolvesFrom"],
    abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
    flavorText: json["flavorText"],
    resistances: List<Resistance>.from(json["resistances"].map((x) => Resistance.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "supertype": supertypeValues.reverse[supertype],
    "subtypes": List<dynamic>.from(subtypes.map((x) => subtypeValues.reverse[x])),
    "hp": hp,
    "types": List<dynamic>.from(types.map((x) => retreatCostValues.reverse[x])),
    "evolvesTo": List<dynamic>.from(evolvesTo.map((x) => x)),
    "rules": List<dynamic>.from(rules.map((x) => x)),
    "attacks": List<dynamic>.from(attacks.map((x) => x.toJson())),
    "weaknesses": List<dynamic>.from(weaknesses.map((x) => x.toJson())),
    "retreatCost": List<dynamic>.from(retreatCost.map((x) => retreatCostValues.reverse[x])),
    "convertedRetreatCost": convertedRetreatCost,
    "set": datumSet.toJson(),
    "number": number,
    "artist": artist,
    "rarity": rarityValues.reverse[rarity],
    "nationalPokedexNumbers": List<dynamic>.from(nationalPokedexNumbers.map((x) => x)),
    "legalities": legalities.toJson(),
    "images": images.toJson(),
    "tcgplayer": tcgplayer.toJson(),
    "cardmarket": cardmarket.toJson(),
    "evolvesFrom": evolvesFrom,
    "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
    "flavorText": flavorText,
    "resistances": List<dynamic>.from(resistances.map((x) => x.toJson())),
  };
}

class Ability {
  final String name;
  final String text;
  final Type type;

  Ability({
    required this.name,
    required this.text,
    required this.type,
  });

  Ability copyWith({
    String? name,
    String? text,
    Type? type,
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
    type: typeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "text": text,
    "type": typeValues.reverse[type],
  };
}

enum Type {
  ABILITY
}

final typeValues = EnumValues({
  "Ability": Type.ABILITY
});

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
  FAIRY,
  FIGHTING,
  FIRE,
  GRASS,
  LIGHTNING,
  METAL,
  PSYCHIC,
  WATER
}

final retreatCostValues = EnumValues({
  "Colorless": RetreatCost.COLORLESS,
  "Darkness": RetreatCost.DARKNESS,
  "Fairy": RetreatCost.FAIRY,
  "Fighting": RetreatCost.FIGHTING,
  "Fire": RetreatCost.FIRE,
  "Grass": RetreatCost.GRASS,
  "Lightning": RetreatCost.LIGHTNING,
  "Metal": RetreatCost.METAL,
  "Psychic": RetreatCost.PSYCHIC,
  "Water": RetreatCost.WATER
});

class Cardmarket {
  final String url;
  final CardmarketUpdatedAt updatedAt;
  final Map<String, double> prices;

  Cardmarket({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });

  Cardmarket copyWith({
    String? url,
    CardmarketUpdatedAt? updatedAt,
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
    updatedAt: cardmarketUpdatedAtValues.map[json["updatedAt"]]!,
    prices: Map.from(json["prices"]).map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "updatedAt": cardmarketUpdatedAtValues.reverse[updatedAt],
    "prices": Map.from(prices).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

enum CardmarketUpdatedAt {
  THE_20241014
}

final cardmarketUpdatedAtValues = EnumValues({
  "2024/10/14": CardmarketUpdatedAt.THE_20241014
});

class Set {
  final Id id;
  final Name name;
  final Series series;
  final int printedTotal;
  final int total;
  final SetLegalities legalities;
  final PtcgoCode ptcgoCode;
  final ReleaseDate releaseDate;
  final SetUpdatedAt updatedAt;
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
    Id? id,
    Name? name,
    Series? series,
    int? printedTotal,
    int? total,
    SetLegalities? legalities,
    PtcgoCode? ptcgoCode,
    ReleaseDate? releaseDate,
    SetUpdatedAt? updatedAt,
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
    id: idValues.map[json["id"]]!,
    name: nameValues.map[json["name"]]!,
    series: seriesValues.map[json["series"]]!,
    printedTotal: json["printedTotal"],
    total: json["total"],
    legalities: SetLegalities.fromJson(json["legalities"]),
    ptcgoCode: ptcgoCodeValues.map[json["ptcgoCode"]]!,
    releaseDate: releaseDateValues.map[json["releaseDate"]]!,
    updatedAt: setUpdatedAtValues.map[json["updatedAt"]]!,
    images: SetImages.fromJson(json["images"]),
  );

  Map<String, dynamic> toJson() => {
    "id": idValues.reverse[id],
    "name": nameValues.reverse[name],
    "series": seriesValues.reverse[series],
    "printedTotal": printedTotal,
    "total": total,
    "legalities": legalities.toJson(),
    "ptcgoCode": ptcgoCodeValues.reverse[ptcgoCode],
    "releaseDate": releaseDateValues.reverse[releaseDate],
    "updatedAt": setUpdatedAtValues.reverse[updatedAt],
    "images": images.toJson(),
  };
}

enum Id {
  G1
}

final idValues = EnumValues({
  "g1": Id.G1
});

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

class SetLegalities {
  final Expanded unlimited;
  final Expanded expanded;

  SetLegalities({
    required this.unlimited,
    required this.expanded,
  });

  SetLegalities copyWith({
    Expanded? unlimited,
    Expanded? expanded,
  }) =>
      SetLegalities(
        unlimited: unlimited ?? this.unlimited,
        expanded: expanded ?? this.expanded,
      );

  factory SetLegalities.fromRawJson(String str) => SetLegalities.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SetLegalities.fromJson(Map<String, dynamic> json) => SetLegalities(
    unlimited: expandedValues.map[json["unlimited"]]!,
    expanded: expandedValues.map[json["expanded"]]!,
  );

  Map<String, dynamic> toJson() => {
    "unlimited": expandedValues.reverse[unlimited],
    "expanded": expandedValues.reverse[expanded],
  };
}

enum Expanded {
  BANNED,
  LEGAL
}

final expandedValues = EnumValues({
  "Banned": Expanded.BANNED,
  "Legal": Expanded.LEGAL
});

enum Name {
  GENERATIONS
}

final nameValues = EnumValues({
  "Generations": Name.GENERATIONS
});

enum PtcgoCode {
  GEN
}

final ptcgoCodeValues = EnumValues({
  "GEN": PtcgoCode.GEN
});

enum ReleaseDate {
  THE_20160222
}

final releaseDateValues = EnumValues({
  "2016/02/22": ReleaseDate.THE_20160222
});

enum Series {
  XY
}

final seriesValues = EnumValues({
  "XY": Series.XY
});

enum SetUpdatedAt {
  THE_20200814093500
}

final setUpdatedAtValues = EnumValues({
  "2020/08/14 09:35:00": SetUpdatedAt.THE_20200814093500
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

class DatumLegalities {
  final Expanded unlimited;
  final Expanded expanded;
  final Expanded standard;

  DatumLegalities({
    required this.unlimited,
    required this.expanded,
    required this.standard,
  });

  DatumLegalities copyWith({
    Expanded? unlimited,
    Expanded? expanded,
    Expanded? standard,
  }) =>
      DatumLegalities(
        unlimited: unlimited ?? this.unlimited,
        expanded: expanded ?? this.expanded,
        standard: standard ?? this.standard,
      );

  factory DatumLegalities.fromRawJson(String str) => DatumLegalities.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumLegalities.fromJson(Map<String, dynamic> json) => DatumLegalities(
    unlimited: expandedValues.map[json["unlimited"]]!,
    expanded: expandedValues.map[json["expanded"]]!,
    standard: expandedValues.map[json["standard"]]!,
  );

  Map<String, dynamic> toJson() => {
    "unlimited": expandedValues.reverse[unlimited],
    "expanded": expandedValues.reverse[expanded],
    "standard": expandedValues.reverse[standard],
  };
}

enum Rarity {
  COMMON,
  RARE,
  RARE_HOLO,
  RARE_HOLO_EX,
  RARE_ULTRA,
  UNCOMMON
}

final rarityValues = EnumValues({
  "Common": Rarity.COMMON,
  "Rare": Rarity.RARE,
  "Rare Holo": Rarity.RARE_HOLO,
  "Rare Holo EX": Rarity.RARE_HOLO_EX,
  "Rare Ultra": Rarity.RARE_ULTRA,
  "Uncommon": Rarity.UNCOMMON
});

class Resistance {
  final RetreatCost type;
  final String value;

  Resistance({
    required this.type,
    required this.value,
  });

  Resistance copyWith({
    RetreatCost? type,
    String? value,
  }) =>
      Resistance(
        type: type ?? this.type,
        value: value ?? this.value,
      );

  factory Resistance.fromRawJson(String str) => Resistance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Resistance.fromJson(Map<String, dynamic> json) => Resistance(
    type: retreatCostValues.map[json["type"]]!,
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "type": retreatCostValues.reverse[type],
    "value": value,
  };
}

enum Subtype {
  BASIC,
  EX,
  ITEM,
  MEGA,
  POKMON_TOOL,
  SPECIAL,
  STAGE_1,
  STAGE_2,
  SUPPORTER
}

final subtypeValues = EnumValues({
  "Basic": Subtype.BASIC,
  "EX": Subtype.EX,
  "Item": Subtype.ITEM,
  "MEGA": Subtype.MEGA,
  "Pokémon Tool": Subtype.POKMON_TOOL,
  "Special": Subtype.SPECIAL,
  "Stage 1": Subtype.STAGE_1,
  "Stage 2": Subtype.STAGE_2,
  "Supporter": Subtype.SUPPORTER
});

enum Supertype {
  ENERGY,
  POKMON,
  TRAINER
}

final supertypeValues = EnumValues({
  "Energy": Supertype.ENERGY,
  "Pokémon": Supertype.POKMON,
  "Trainer": Supertype.TRAINER
});

class Tcgplayer {
  final String url;
  final CardmarketUpdatedAt updatedAt;
  final Prices prices;

  Tcgplayer({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });

  Tcgplayer copyWith({
    String? url,
    CardmarketUpdatedAt? updatedAt,
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
    updatedAt: cardmarketUpdatedAtValues.map[json["updatedAt"]]!,
    prices: Prices.fromJson(json["prices"]),
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "updatedAt": cardmarketUpdatedAtValues.reverse[updatedAt],
    "prices": prices.toJson(),
  };
}

class Prices {
  final Holofoil holofoil;
  final Holofoil normal;
  final Holofoil reverseHolofoil;

  Prices({
    required this.holofoil,
    required this.normal,
    required this.reverseHolofoil,
  });

  Prices copyWith({
    Holofoil? holofoil,
    Holofoil? normal,
    Holofoil? reverseHolofoil,
  }) =>
      Prices(
        holofoil: holofoil ?? this.holofoil,
        normal: normal ?? this.normal,
        reverseHolofoil: reverseHolofoil ?? this.reverseHolofoil,
      );

  factory Prices.fromRawJson(String str) => Prices.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prices.fromJson(Map<String, dynamic> json) => Prices(
    holofoil: Holofoil.fromJson(json["holofoil"]),
    normal: Holofoil.fromJson(json["normal"]),
    reverseHolofoil: Holofoil.fromJson(json["reverseHolofoil"]),
  );

  Map<String, dynamic> toJson() => {
    "holofoil": holofoil.toJson(),
    "normal": normal.toJson(),
    "reverseHolofoil": reverseHolofoil.toJson(),
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
    directLow: json["directLow"]?.toDouble(),
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
