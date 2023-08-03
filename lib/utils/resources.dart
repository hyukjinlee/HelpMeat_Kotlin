import 'package:flutter/material.dart';
import 'package:helpmeat/screens/arguments/grill_meat_arguments.dart';

/// App Theme 관련 상수
class AppThemes {
  static const Color mainPink = Color(0xFFE96D75);
  static const Color mainPink_40 = Color(0x66E96D75);
  static const Color screenBackGround = Color(0xFFF8E7F1);

  static const Radius radius = Radius.circular(20);
  static const Radius hard_radius = Radius.circular(40);
}

/// Resource Utils
class ResourceUtils {
  static String getMeatImagePath(MeatType meatType) {
    switch (meatType) {
      case MeatType.MEAT_TYPE_FORK:
        return 'assets/fork.png';
      case MeatType.MEAT_TYPE_BEEF:
        return 'assets/beef.png';
      default:
        return "";
    }
  }

  static String getMeatText(MeatType meatType) {
    switch (meatType) {
      case MeatType.MEAT_TYPE_FORK:
        return '돼지고기';
      case MeatType.MEAT_TYPE_BEEF:
        return '소고기';
      default:
        return "";
    }
  }

  static List<MeatInfo> getMeatPartInfoList(MeatType meatType) {
    switch (meatType) {
      case MeatType.MEAT_TYPE_BEEF:
        return <MeatInfo>[
          MeatInfo(name: "갈비", meatPartType: MeatPartType.BEEF_PART_TYPE_GALBI),
          MeatInfo(name: "등심", meatPartType: MeatPartType.BEEF_PART_TYPE_DEUNGSIM),
          MeatInfo(name: "부채", meatPartType: MeatPartType.BEEF_PART_TYPE_BUCHAE),
          MeatInfo(name: "살치", meatPartType: MeatPartType.BEEF_PART_TYPE_SALCHI),
          MeatInfo(name: "안심", meatPartType: MeatPartType.BEEF_PART_TYPE_ANSIM),
          MeatInfo(name: "안창", meatPartType: MeatPartType.BEEF_PART_TYPE_ANCHANG),
          MeatInfo(name: "제비추리", meatPartType: MeatPartType.BEEF_PART_TYPE_JEBICHURI),
          MeatInfo(name: "채끝", meatPartType: MeatPartType.BEEF_PART_TYPE_CHAEKKEUT),
          MeatInfo(name: "토시", meatPartType: MeatPartType.BEEF_PART_TYPE_TOSI),];

      case MeatType.MEAT_TYPE_FORK:
        return <MeatInfo>[
          MeatInfo(name: "갈비", meatPartType: MeatPartType.FORK_PART_TYPE_GALBI),
          MeatInfo(name: "갈매기", meatPartType: MeatPartType.FORK_PART_TYPE_GALMAEGI),
          MeatInfo(name: "뒷다리", meatPartType: MeatPartType.FORK_PART_TYPE_DUITDARI),
          MeatInfo(name: "등심", meatPartType: MeatPartType.FORK_PART_TYPE_DEUNGSIM),
          MeatInfo(name: "목살", meatPartType: MeatPartType.FORK_PART_TYPE_MOKSAL),
          MeatInfo(name: "안심", meatPartType: MeatPartType.FORK_PART_TYPE_ANSIM),
          MeatInfo(name: "앞다리", meatPartType: MeatPartType.FORK_PART_TYPE_ABDARI),
          MeatInfo(name: "삼겹", meatPartType: MeatPartType.FORK_PART_TYPE_SAMGYEUP),
          MeatInfo(name: "항정", meatPartType: MeatPartType.FORK_PART_TYPE_HANGJEONG),];
      default:
        throw Exception();
    }
  }

  static String getMeatPartImagePath(MeatPartType partType) {
    switch (partType) {
      case MeatPartType.BEEF_PART_TYPE_ANCHANG:
        return 'assets/beef_anchang.png';
      case MeatPartType.BEEF_PART_TYPE_ANSIM:
        return 'assets/beef_ansim.png';
      case MeatPartType.BEEF_PART_TYPE_BUCHAE:
        return 'assets/beef_buchae.png';
      case MeatPartType.BEEF_PART_TYPE_CHAEKKEUT:
        return 'assets/beef_chaekkeut.png';
      case MeatPartType.BEEF_PART_TYPE_DEUNGSIM:
        return 'assets/beef_deungsim.png';
      case MeatPartType.BEEF_PART_TYPE_GALBI:
        return 'assets/beef_galbi.png';
      case MeatPartType.BEEF_PART_TYPE_JEBICHURI:
        return 'assets/beef_jebichuri.png';
      case MeatPartType.BEEF_PART_TYPE_SALCHI:
        return 'assets/beef_salchi.png';
      case MeatPartType.BEEF_PART_TYPE_TOSI:
        return 'assets/beef_tosi.png';
      case MeatPartType.FORK_PART_TYPE_ABDARI:
        return 'assets/fork_abdari.png';
      case MeatPartType.FORK_PART_TYPE_ANSIM:
        return 'assets/fork_ansim.png';
      case MeatPartType.FORK_PART_TYPE_DEUNGSIM:
        return 'assets/fork_deungsim.png';
      case MeatPartType.FORK_PART_TYPE_DUITDARI:
        return 'assets/fork_duitdari.png';
      case MeatPartType.FORK_PART_TYPE_GALBI:
        return 'assets/fork_galbi.png';
      case MeatPartType.FORK_PART_TYPE_GALMAEGI:
        return 'assets/fork_galmaegi.png';
      case MeatPartType.FORK_PART_TYPE_HANGJEONG:
        return 'assets/fork_hangjeong.png';
      case MeatPartType.FORK_PART_TYPE_MOKSAL:
        return 'assets/fork_moksal.png';
      case MeatPartType.FORK_PART_TYPE_SAMGYEUP:
        return 'assets/fork_samgyeup.png';
      default:
        return "";
    }
  }

  /// Thickness Screen
  static String getFirstStringByMeatThickness(double thickness) {
    if (thickness == 0.0){
      return '이제 화살표를 움직여';
    } else if (thickness <= 0.8) {
      return '입에서 사르르';
    } else if (thickness <= 1.5) {
      return '금방 구워지는';
    } else if (thickness <= 2.0) {
      return '호불호 안 갈리는';
    } else if (thickness <= 3.0) {
      return '식감이 살아있는';
    } else if (thickness <= 5.0) {
      return '육즙이 팡팡';
    }
    return "";
  }

  static String getCenterStringByMeatThickness(double thickness) {
    if (thickness == 0.0){
      return '';
    } else if (thickness <= 0.8) {
      return '"얇은"';
    } else if (thickness <= 1.5) {
      return '"조금 얇은"';
    } else if (thickness <= 2.0) {
      return '"보통 두께의"';
    } else if (thickness <= 3.0) {
      return '"조금 두꺼운"';
    } else if (thickness <= 5.0) {
      return '"두꺼운"';
    }
    return "";
  }

  static String getLastStringByMeatThickness(double thickness) {
    if (thickness == 0.0){
      return '두께(\u21D5)를 측정해주세요';
    } else if (thickness <= 5.0) {
      return '고기네요';
    }
    return "";
  }

  /// Doneness Screen
  static List<DonenessInfo> getDonenessInfoList(MeatType meatType) {
    switch (meatType) {
      case MeatType.MEAT_TYPE_BEEF:
        return <DonenessInfo>[
          DonenessInfo(name: "RARE", donenessType: DonenessType.RARE),
          DonenessInfo(name: "MEDIUM RARE", donenessType: DonenessType.MEDIUM_RARE),
          DonenessInfo(name: "MEDIUM", donenessType: DonenessType.MEDIUM),
          DonenessInfo(name: "WELL DONE", donenessType: DonenessType.WELLDONE),
        ];

      case MeatType.MEAT_TYPE_FORK:
        return <DonenessInfo>[
          DonenessInfo(name: "RARE", donenessType: DonenessType.RARE),
          DonenessInfo(name: "MEDIUM", donenessType: DonenessType.MEDIUM),
          DonenessInfo(name: "WELL DONE", donenessType: DonenessType.WELLDONE),
        ];
      default:
        throw Exception();
    }
  }

  static String getMeatWithDonenessImagePath(MeatType meatType, DonenessType donenessType) {
    switch (meatType) {
      case MeatType.MEAT_TYPE_BEEF:
        switch (donenessType) {
          case DonenessType.RARE:
            return 'assets/beef_rare.png';
          case DonenessType.MEDIUM_RARE:
            return 'assets/beef_medium_rare.png';
          case DonenessType.MEDIUM:
            return 'assets/beef_medium.png';
          case DonenessType.WELLDONE:
            return 'assets/beef_well_done.png';
        }

      case MeatType.MEAT_TYPE_FORK:
        switch (donenessType) {
          case DonenessType.RARE:
            return 'assets/fork_rare.png';
          case DonenessType.MEDIUM_RARE:
            throw Exception();
          case DonenessType.MEDIUM:
            return 'assets/fork_medium.png';
          case DonenessType.WELLDONE:
            return 'assets/fork_well_done.png';
        }

      default:
        throw Exception();
    }
  }
}