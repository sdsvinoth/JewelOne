class DigiSchemeModel {
  List<DigiSchemeData>? data;
  String? message;

  DigiSchemeModel({this.data, this.message});

  DigiSchemeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DigiSchemeData>[];
      json['data'].forEach((v) {
        data!.add(new DigiSchemeData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class DigiSchemeData {
  String? targetAchievedPercent;
  String? schemeName;
  String? schemeDescription;
  String? metalType;
  int? metalId;
  double? metalRate;
  int? schemeId;
  String? accountId;
  bool? joined;
  int? actionType;
  String? status;
  String? accountNumber;
  String? accountName;
  double? weightSavedGrams;
  double? maturityBenefitGrams;
  double? totalGoldSavedGrams;
  String? jointDate;
  String? maturityDate;
  bool? isTargetSet;
  String? currentInterestSlab;
  double? currentInterestSlabRate;
  int? currentDaysFromJointDate;
  bool? showTarget;
  List<InterestSlabs>? interestSlabs;

  DigiSchemeData(
      {this.targetAchievedPercent,
      this.schemeName,
      this.schemeDescription,
      this.metalType,
      this.metalId,
      this.metalRate,
      this.schemeId,
      this.accountId,
      this.joined,
      this.actionType,
      this.status,
      this.accountNumber,
      this.accountName,
      this.weightSavedGrams,
      this.maturityBenefitGrams,
      this.totalGoldSavedGrams,
      this.jointDate,
      this.maturityDate,
      this.isTargetSet,
      this.currentInterestSlab,
      this.currentInterestSlabRate,
      this.currentDaysFromJointDate,
      this.showTarget,
      this.interestSlabs});

  DigiSchemeData.fromJson(Map<String, dynamic> json) {
    targetAchievedPercent = json['targetAchievedPercent'];
    schemeName = json['schemeName'];
    schemeDescription = json['schemeDescription'];
    metalType = json['metalType'];
    metalId = json['metalId'];
    metalRate = json['metalRate'];
    schemeId = json['schemeId'];
    accountId = json['accountId'];
    joined = json['joined'];
    actionType = json['actionType'];
    status = json['status'];
    accountNumber = json['accountNumber'];
    accountName = json['accountName'];
    weightSavedGrams = json['weightSavedGrams'];
    maturityBenefitGrams = json['maturityBenefitGrams'];
    totalGoldSavedGrams = json['totalGoldSavedGrams'];
    jointDate = json['jointDate'];
    maturityDate = json['maturityDate'];
    isTargetSet = json['isTargetSet'];
    currentInterestSlab = json['currentInterestSlab'];
    currentInterestSlabRate = json['currentInterestSlabRate'];
    currentDaysFromJointDate = json['currentDaysFromJointDate'];
    showTarget = json['showTarget'];
    if (json['interestSlabs'] != null) {
      interestSlabs = <InterestSlabs>[];
      json['interestSlabs'].forEach((v) {
        interestSlabs!.add(new InterestSlabs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['targetAchievedPercent'] = this.targetAchievedPercent;
    data['schemeName'] = this.schemeName;
    data['schemeDescription'] = this.schemeDescription;
    data['metalType'] = this.metalType;
    data['metalId'] = this.metalId;
    data['metalRate'] = this.metalRate;
    data['schemeId'] = this.schemeId;
    data['accountId'] = this.accountId;
    data['joined'] = this.joined;
    data['actionType'] = this.actionType;
    data['status'] = this.status;
    data['accountNumber'] = this.accountNumber;
    data['accountName'] = this.accountName;
    data['weightSavedGrams'] = this.weightSavedGrams;
    data['maturityBenefitGrams'] = this.maturityBenefitGrams;
    data['totalGoldSavedGrams'] = this.totalGoldSavedGrams;
    data['jointDate'] = this.jointDate;
    data['maturityDate'] = this.maturityDate;
    data['isTargetSet'] = this.isTargetSet;
    data['currentInterestSlab'] = this.currentInterestSlab;
    data['currentInterestSlabRate'] = this.currentInterestSlabRate;
    data['currentDaysFromJointDate'] = this.currentDaysFromJointDate;
    data['showTarget'] = this.showTarget;
    if (this.interestSlabs != null) {
      data['interestSlabs'] =
          this.interestSlabs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InterestSlabs {
  int? fromDays;
  int? toDays;
  String? interestRate;
  bool? isCurrentSlab;
  bool? slabCrossed;

  InterestSlabs(
      {this.fromDays,
      this.toDays,
      this.interestRate,
      this.isCurrentSlab,
      this.slabCrossed});

  InterestSlabs.fromJson(Map<String, dynamic> json) {
    fromDays = json['fromDays'];
    toDays = json['toDays'];
    interestRate = json['interestRate'];
    isCurrentSlab = json['isCurrentSlab'];
    slabCrossed = json['slabCrossed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fromDays'] = this.fromDays;
    data['toDays'] = this.toDays;
    data['interestRate'] = this.interestRate;
    data['isCurrentSlab'] = this.isCurrentSlab;
    data['slabCrossed'] = this.slabCrossed;
    return data;
  }
}
