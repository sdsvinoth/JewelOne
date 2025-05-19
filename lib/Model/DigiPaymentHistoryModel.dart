class DigiPaymentHistoryModel {
  SchemeAccount? schemeAccount;
  Customer? customer;
  List<Payments>? payments;

  DigiPaymentHistoryModel({this.schemeAccount, this.customer, this.payments});

  DigiPaymentHistoryModel.fromJson(Map<String, dynamic> json) {
    schemeAccount = json['scheme_account'] != null
        ? new SchemeAccount.fromJson(json['scheme_account'])
        : null;
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    if (json['payments'] != null) {
      payments = <Payments>[];
      json['payments'].forEach((v) {
        payments!.add(new Payments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.schemeAccount != null) {
      data['scheme_account'] = this.schemeAccount!.toJson();
    }
    if (this.customer != null) {
      data['customer'] = this.customer!.toJson();
    }
    if (this.payments != null) {
      data['payments'] = this.payments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SchemeAccount {
  int? idSchemeAccount;
  String? schemeAccNumber;
  int? totalPaidIns;
  String? displayAcNo;
  String? accountName;
  String? refNo;
  String? startDate;
  int? approvedEmployee;
  Null? closingBalance;
  Null? closingAmount;
  Null? closingWeight;
  Null? targetWeight;
  Null? closingDate;
  bool? isClosed;
  Null? addedBy;
  Null? additionalBenefits;
  Null? closingAddCharges;
  Null? closingDeductions;
  Null? closingBenefits;
  bool? isUtilized;
  Null? utilizedType;
  String? createdOn;
  Null? updatedOn;
  int? accSchemeId;
  int? idCustomer;
  int? idBranch;
  Null? closedEmployee;
  Null? closingIdBranch;
  Null? finYear;
  Null? closeRevertedBy;
  String? schemeName;
  int? schemeType;
  String? currPeriodAndInterest;
  String? maturityDate;
  double? totalMetalWeight;
  double? totalNetAmount;

  SchemeAccount(
      {this.idSchemeAccount,
      this.schemeAccNumber,
      this.totalPaidIns,
      this.displayAcNo,
      this.accountName,
      this.refNo,
      this.startDate,
      this.approvedEmployee,
      this.closingBalance,
      this.closingAmount,
      this.closingWeight,
      this.targetWeight,
      this.closingDate,
      this.isClosed,
      this.addedBy,
      this.additionalBenefits,
      this.closingAddCharges,
      this.closingDeductions,
      this.closingBenefits,
      this.isUtilized,
      this.utilizedType,
      this.createdOn,
      this.updatedOn,
      this.accSchemeId,
      this.idCustomer,
      this.idBranch,
      this.closedEmployee,
      this.closingIdBranch,
      this.finYear,
      this.closeRevertedBy,
      this.schemeName,
      this.schemeType,
      this.currPeriodAndInterest,
      this.maturityDate,
      this.totalMetalWeight,
      this.totalNetAmount});

  SchemeAccount.fromJson(Map<String, dynamic> json) {
    idSchemeAccount = json['id_scheme_account'];
    schemeAccNumber = json['scheme_acc_number'];
    totalPaidIns = json['total_paid_ins'];
    displayAcNo = json['display_ac_no'];
    accountName = json['account_name'];
    refNo = json['ref_no'];
    startDate = json['start_date'];
    approvedEmployee = json['approved_employee'];
    closingBalance = json['closing_balance'];
    closingAmount = json['closing_amount'];
    closingWeight = json['closing_weight'];
    targetWeight = json['target_weight'];
    closingDate = json['closing_date'];
    isClosed = json['is_closed'];
    addedBy = json['added_by'];
    additionalBenefits = json['additional_benefits'];
    closingAddCharges = json['closing_add_charges'];
    closingDeductions = json['closing_deductions'];
    closingBenefits = json['closing_benefits'];
    isUtilized = json['is_utilized'];
    utilizedType = json['utilized_type'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
    accSchemeId = json['acc_scheme_id'];
    idCustomer = json['id_customer'];
    idBranch = json['id_branch'];
    closedEmployee = json['closed_employee'];
    closingIdBranch = json['closing_id_branch'];
    finYear = json['fin_year'];
    closeRevertedBy = json['close_reverted_by'];
    schemeName = json['scheme_name'];
    schemeType = json['scheme_type'];
    currPeriodAndInterest = json['curr_period_and_interest'];
    maturityDate = json['maturity_date'];
    totalMetalWeight = json['total_metal_weight'];
    totalNetAmount = json['total_net_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_scheme_account'] = this.idSchemeAccount;
    data['scheme_acc_number'] = this.schemeAccNumber;
    data['total_paid_ins'] = this.totalPaidIns;
    data['display_ac_no'] = this.displayAcNo;
    data['account_name'] = this.accountName;
    data['ref_no'] = this.refNo;
    data['start_date'] = this.startDate;
    data['approved_employee'] = this.approvedEmployee;
    data['closing_balance'] = this.closingBalance;
    data['closing_amount'] = this.closingAmount;
    data['closing_weight'] = this.closingWeight;
    data['target_weight'] = this.targetWeight;
    data['closing_date'] = this.closingDate;
    data['is_closed'] = this.isClosed;
    data['added_by'] = this.addedBy;
    data['additional_benefits'] = this.additionalBenefits;
    data['closing_add_charges'] = this.closingAddCharges;
    data['closing_deductions'] = this.closingDeductions;
    data['closing_benefits'] = this.closingBenefits;
    data['is_utilized'] = this.isUtilized;
    data['utilized_type'] = this.utilizedType;
    data['created_on'] = this.createdOn;
    data['updated_on'] = this.updatedOn;
    data['acc_scheme_id'] = this.accSchemeId;
    data['id_customer'] = this.idCustomer;
    data['id_branch'] = this.idBranch;
    data['closed_employee'] = this.closedEmployee;
    data['closing_id_branch'] = this.closingIdBranch;
    data['fin_year'] = this.finYear;
    data['close_reverted_by'] = this.closeRevertedBy;
    data['scheme_name'] = this.schemeName;
    data['scheme_type'] = this.schemeType;
    data['curr_period_and_interest'] = this.currPeriodAndInterest;
    data['maturity_date'] = this.maturityDate;
    data['total_metal_weight'] = this.totalMetalWeight;
    data['total_net_amount'] = this.totalNetAmount;
    return data;
  }
}

class Customer {
  int? idCustomer;
  String? email;
  String? mobCode;
  Null? referenceNo;
  int? idBranch;
  Null? idArea;
  String? title;
  String? lastname;
  String? firstname;
  Null? companyName;
  String? dateOfBirth;
  String? dateOfWed;
  int? gender;
  String? mobile;
  Null? phoneNo;
  String? cusImg;
  Null? comments;
  Null? profileComplete;
  bool? active;
  int? approvedStatus;
  Null? dateAdd;
  String? customEntryDate;
  Null? dateUpd;
  bool? notification;
  Null? gstNumber;
  Null? panNumber;
  Null? aadharNumber;
  Null? cusRefCode;
  bool? isRefbenefitCrtCus;
  Null? empRefCode;
  bool? isRefbenefitCrtEmp;
  int? religion;
  bool? kycStatus;
  bool? isCusSynced;
  Null? lastSyncTime;
  Null? lastPaymentOn;
  bool? isVip;
  bool? isEmailVerified;
  String? creditBalance;
  String? debitBalance;
  int? registeredThrough;
  int? approvedThrough;
  int? catalogueReqStatus;
  String? cusType;
  bool? sendPromoSms;
  String? isRetailer;
  String? retailerType;
  String? profileType;
  String? createdOn;
  Null? updatedOn;
  int? catalogueVisibleType;
  Null? showCatalogueDate;
  int? user;
  int? profession;
  int? createdBy;
  Null? updatedBy;
  String? address;
  String? address1;
  String? address2;
  String? address3;
  String? mobileWoc;

  Customer(
      {this.idCustomer,
      this.email,
      this.mobCode,
      this.referenceNo,
      this.idBranch,
      this.idArea,
      this.title,
      this.lastname,
      this.firstname,
      this.companyName,
      this.dateOfBirth,
      this.dateOfWed,
      this.gender,
      this.mobile,
      this.phoneNo,
      this.cusImg,
      this.comments,
      this.profileComplete,
      this.active,
      this.approvedStatus,
      this.dateAdd,
      this.customEntryDate,
      this.dateUpd,
      this.notification,
      this.gstNumber,
      this.panNumber,
      this.aadharNumber,
      this.cusRefCode,
      this.isRefbenefitCrtCus,
      this.empRefCode,
      this.isRefbenefitCrtEmp,
      this.religion,
      this.kycStatus,
      this.isCusSynced,
      this.lastSyncTime,
      this.lastPaymentOn,
      this.isVip,
      this.isEmailVerified,
      this.creditBalance,
      this.debitBalance,
      this.registeredThrough,
      this.approvedThrough,
      this.catalogueReqStatus,
      this.cusType,
      this.sendPromoSms,
      this.isRetailer,
      this.retailerType,
      this.profileType,
      this.createdOn,
      this.updatedOn,
      this.catalogueVisibleType,
      this.showCatalogueDate,
      this.user,
      this.profession,
      this.createdBy,
      this.updatedBy,
      this.address,
      this.address1,
      this.address2,
      this.address3,
      this.mobileWoc});

  Customer.fromJson(Map<String, dynamic> json) {
    idCustomer = json['id_customer'];
    email = json['email'];
    mobCode = json['mob_code'];
    referenceNo = json['reference_no'];
    idBranch = json['id_branch'];
    idArea = json['id_area'];
    title = json['title'];
    lastname = json['lastname'];
    firstname = json['firstname'];
    companyName = json['company_name'];
    dateOfBirth = json['date_of_birth'];
    dateOfWed = json['date_of_wed'];
    gender = json['gender'];
    mobile = json['mobile'];
    phoneNo = json['phone_no'];
    cusImg = json['cus_img'];
    comments = json['comments'];
    profileComplete = json['profile_complete'];
    active = json['active'];
    approvedStatus = json['approved_status'];
    dateAdd = json['date_add'];
    customEntryDate = json['custom_entry_date'];
    dateUpd = json['date_upd'];
    notification = json['notification'];
    gstNumber = json['gst_number'];
    panNumber = json['pan_number'];
    aadharNumber = json['aadhar_number'];
    cusRefCode = json['cus_ref_code'];
    isRefbenefitCrtCus = json['is_refbenefit_crt_cus'];
    empRefCode = json['emp_ref_code'];
    isRefbenefitCrtEmp = json['is_refbenefit_crt_emp'];
    religion = json['religion'];
    kycStatus = json['kyc_status'];
    isCusSynced = json['is_cus_synced'];
    lastSyncTime = json['last_sync_time'];
    lastPaymentOn = json['last_payment_on'];
    isVip = json['is_vip'];
    isEmailVerified = json['is_email_verified'];
    creditBalance = json['credit_balance'];
    debitBalance = json['debit_balance'];
    registeredThrough = json['registered_through'];
    approvedThrough = json['approved_through'];
    catalogueReqStatus = json['catalogue_req_status'];
    cusType = json['cus_type'];
    sendPromoSms = json['send_promo_sms'];
    isRetailer = json['is_retailer'];
    retailerType = json['retailer_type'];
    profileType = json['profile_type'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
    catalogueVisibleType = json['catalogue_visible_type'];
    showCatalogueDate = json['show_catalogue_date'];
    user = json['user'];
    profession = json['profession'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    address = json['address'];
    address1 = json['address1'];
    address2 = json['address2'];
    address3 = json['address3'];
    mobileWoc = json['mobile_woc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_customer'] = this.idCustomer;
    data['email'] = this.email;
    data['mob_code'] = this.mobCode;
    data['reference_no'] = this.referenceNo;
    data['id_branch'] = this.idBranch;
    data['id_area'] = this.idArea;
    data['title'] = this.title;
    data['lastname'] = this.lastname;
    data['firstname'] = this.firstname;
    data['company_name'] = this.companyName;
    data['date_of_birth'] = this.dateOfBirth;
    data['date_of_wed'] = this.dateOfWed;
    data['gender'] = this.gender;
    data['mobile'] = this.mobile;
    data['phone_no'] = this.phoneNo;
    data['cus_img'] = this.cusImg;
    data['comments'] = this.comments;
    data['profile_complete'] = this.profileComplete;
    data['active'] = this.active;
    data['approved_status'] = this.approvedStatus;
    data['date_add'] = this.dateAdd;
    data['custom_entry_date'] = this.customEntryDate;
    data['date_upd'] = this.dateUpd;
    data['notification'] = this.notification;
    data['gst_number'] = this.gstNumber;
    data['pan_number'] = this.panNumber;
    data['aadhar_number'] = this.aadharNumber;
    data['cus_ref_code'] = this.cusRefCode;
    data['is_refbenefit_crt_cus'] = this.isRefbenefitCrtCus;
    data['emp_ref_code'] = this.empRefCode;
    data['is_refbenefit_crt_emp'] = this.isRefbenefitCrtEmp;
    data['religion'] = this.religion;
    data['kyc_status'] = this.kycStatus;
    data['is_cus_synced'] = this.isCusSynced;
    data['last_sync_time'] = this.lastSyncTime;
    data['last_payment_on'] = this.lastPaymentOn;
    data['is_vip'] = this.isVip;
    data['is_email_verified'] = this.isEmailVerified;
    data['credit_balance'] = this.creditBalance;
    data['debit_balance'] = this.debitBalance;
    data['registered_through'] = this.registeredThrough;
    data['approved_through'] = this.approvedThrough;
    data['catalogue_req_status'] = this.catalogueReqStatus;
    data['cus_type'] = this.cusType;
    data['send_promo_sms'] = this.sendPromoSms;
    data['is_retailer'] = this.isRetailer;
    data['retailer_type'] = this.retailerType;
    data['profile_type'] = this.profileType;
    data['created_on'] = this.createdOn;
    data['updated_on'] = this.updatedOn;
    data['catalogue_visible_type'] = this.catalogueVisibleType;
    data['show_catalogue_date'] = this.showCatalogueDate;
    data['user'] = this.user;
    data['profession'] = this.profession;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['address'] = this.address;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['address3'] = this.address3;
    data['mobile_woc'] = this.mobileWoc;
    return data;
  }
}

class Payments {
  int? idPayment;
  String? paidThroughDisplay;
  String? datePayment;
  int? installment;
  Null? transId;
  String? transDate;
  String? entryDate;
  String? paymentAmount;
  String? netAmount;
  String? paymentCharges;
  String? metalRate;
  String? metalWeight;
  String? bonusMetalWeight;
  String? bonusMetalAmount;
  String? remark;
  String? receiptNo;
  Null? refTransId;
  String? discountAmt;
  String? taxAmount;
  int? taxType;
  String? actualTransAmt;
  int? isOffline;
  Null? approvalDate;
  String? gst;
  int? gstType;
  String? gstAmount;
  String? paidThrough;
  String? dueType;
  Null? orderId;
  Null? paymentSessionId;
  bool? isFreeInstallment;
  String? createdOn;
  Null? updatedOn;
  Null? cancelledDate;
  Null? cancelReason;
  int? idSchemeAccount;
  int? idScheme;
  int? idBranch;
  Null? idPayGateway;
  int? paymentStatus;
  Null? taxId;
  int? createdBy;
  Null? updatedBy;
  Null? cancelledBy;
  bool? cancel;
  String? bonus;
  double? accumulateWeight;

  Payments(
      {this.idPayment,
      this.paidThroughDisplay,
      this.datePayment,
      this.installment,
      this.transId,
      this.transDate,
      this.entryDate,
      this.paymentAmount,
      this.netAmount,
      this.paymentCharges,
      this.metalRate,
      this.metalWeight,
      this.bonusMetalWeight,
      this.bonusMetalAmount,
      this.remark,
      this.receiptNo,
      this.refTransId,
      this.discountAmt,
      this.taxAmount,
      this.taxType,
      this.actualTransAmt,
      this.isOffline,
      this.approvalDate,
      this.gst,
      this.gstType,
      this.gstAmount,
      this.paidThrough,
      this.dueType,
      this.orderId,
      this.paymentSessionId,
      this.isFreeInstallment,
      this.createdOn,
      this.updatedOn,
      this.cancelledDate,
      this.cancelReason,
      this.idSchemeAccount,
      this.idScheme,
      this.idBranch,
      this.idPayGateway,
      this.paymentStatus,
      this.taxId,
      this.createdBy,
      this.updatedBy,
      this.cancelledBy,
      this.cancel,
      this.bonus,
      this.accumulateWeight});

  Payments.fromJson(Map<String, dynamic> json) {
    idPayment = json['id_payment'];
    paidThroughDisplay = json['paid_through_display'];
    datePayment = json['date_payment'];
    installment = json['installment'];
    transId = json['trans_id'];
    transDate = json['trans_date'];
    entryDate = json['entry_date'];
    paymentAmount = json['payment_amount'];
    netAmount = json['net_amount'];
    paymentCharges = json['payment_charges'];
    metalRate = json['metal_rate'];
    metalWeight = json['metal_weight'];
    bonusMetalWeight = json['bonus_metal_weight'];
    bonusMetalAmount = json['bonus_metal_amount'];
    remark = json['remark'];
    receiptNo = json['receipt_no'];
    refTransId = json['ref_trans_id'];
    discountAmt = json['discountAmt'];
    taxAmount = json['tax_amount'];
    taxType = json['tax_type'];
    actualTransAmt = json['actual_trans_amt'];
    isOffline = json['is_offline'];
    approvalDate = json['approval_date'];
    gst = json['gst'];
    gstType = json['gst_type'];
    gstAmount = json['gst_amount'];
    paidThrough = json['paid_through'];
    dueType = json['due_type'];
    orderId = json['order_id'];
    paymentSessionId = json['payment_session_id'];
    isFreeInstallment = json['is_free_installment'];
    createdOn = json['created_on'];
    updatedOn = json['updated_on'];
    cancelledDate = json['cancelled_date'];
    cancelReason = json['cancel_reason'];
    idSchemeAccount = json['id_scheme_account'];
    idScheme = json['id_scheme'];
    idBranch = json['id_branch'];
    idPayGateway = json['id_payGateway'];
    paymentStatus = json['payment_status'];
    taxId = json['tax_id'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    cancelledBy = json['cancelled_by'];
    cancel = json['cancel'];
    bonus = json['bonus'];
    accumulateWeight = json['accumulate_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_payment'] = this.idPayment;
    data['paid_through_display'] = this.paidThroughDisplay;
    data['date_payment'] = this.datePayment;
    data['installment'] = this.installment;
    data['trans_id'] = this.transId;
    data['trans_date'] = this.transDate;
    data['entry_date'] = this.entryDate;
    data['payment_amount'] = this.paymentAmount;
    data['net_amount'] = this.netAmount;
    data['payment_charges'] = this.paymentCharges;
    data['metal_rate'] = this.metalRate;
    data['metal_weight'] = this.metalWeight;
    data['bonus_metal_weight'] = this.bonusMetalWeight;
    data['bonus_metal_amount'] = this.bonusMetalAmount;
    data['remark'] = this.remark;
    data['receipt_no'] = this.receiptNo;
    data['ref_trans_id'] = this.refTransId;
    data['discountAmt'] = this.discountAmt;
    data['tax_amount'] = this.taxAmount;
    data['tax_type'] = this.taxType;
    data['actual_trans_amt'] = this.actualTransAmt;
    data['is_offline'] = this.isOffline;
    data['approval_date'] = this.approvalDate;
    data['gst'] = this.gst;
    data['gst_type'] = this.gstType;
    data['gst_amount'] = this.gstAmount;
    data['paid_through'] = this.paidThrough;
    data['due_type'] = this.dueType;
    data['order_id'] = this.orderId;
    data['payment_session_id'] = this.paymentSessionId;
    data['is_free_installment'] = this.isFreeInstallment;
    data['created_on'] = this.createdOn;
    data['updated_on'] = this.updatedOn;
    data['cancelled_date'] = this.cancelledDate;
    data['cancel_reason'] = this.cancelReason;
    data['id_scheme_account'] = this.idSchemeAccount;
    data['id_scheme'] = this.idScheme;
    data['id_branch'] = this.idBranch;
    data['id_payGateway'] = this.idPayGateway;
    data['payment_status'] = this.paymentStatus;
    data['tax_id'] = this.taxId;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['cancelled_by'] = this.cancelledBy;
    data['cancel'] = this.cancel;
    data['bonus'] = this.bonus;
    data['accumulate_weight'] = this.accumulateWeight;
    return data;
  }
}
