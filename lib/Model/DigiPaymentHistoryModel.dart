class DigiPaymentHistoryModel {
  SchemeAccount? schemeAccount;
  List<Payments>? payments;

  DigiPaymentHistoryModel({this.schemeAccount, this.payments});

  DigiPaymentHistoryModel.fromJson(Map<String, dynamic> json) {
    schemeAccount = json['scheme_account'] != null
        ? new SchemeAccount.fromJson(json['scheme_account'])
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
  String? closingBalance;
  String? closingAmount;
  String? closingWeight;
  String? targetWeight;
  String? closingDate;
  bool? isClosed;
  String? addedBy;
  String? additionalBenefits;
  String? closingAddCharges;
  String? closingDeductions;
  String? closingBenefits;
  bool? isUtilized;
  String? utilizedType;
  String? createdOn;
  String? updatedOn;
  int? accSchemeId;
  int? idCustomer;
  int? idBranch;
  int? closedEmployee;
  int? closingIdBranch;
  int? finYear;
  int? closeRevertedBy;
  String? schemeName;
  String? schemeType;
  String? currPeriodAndInterest;
  String? maturityDate;
  String? totalMetalWeight;
  String? totalNetAmount;

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

class Payments {
  int? idPayment;
  String? paidThroughDisplay;
  String? datePayment;
  int? installment;
  String? transId;
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
  String? refTransId;
  String? discountAmt;
  String? taxAmount;
  int? taxType;
  String? actualTransAmt;
  int? isOffline;
  String? approvalDate;
  String? gst;
  int? gstType;
  String? gstAmount;
  String? paidThrough;
  String? dueType;
  String? orderId;
  String? paymentSessionId;
  bool? isFreeInstallment;
  String? createdOn;
  String? updatedOn;
  String? cancelledDate;
  String? cancelReason;
  String? accountName;
  int? idSchemeAccount;
  int? idScheme;
  int? idBranch;
  int? idPayGateway;
  String? paymentStatus;
  int? taxId;
  int? createdBy;
  int? updatedBy;
  int? cancelledBy;
  int? idCustomer;
  bool? cancel;
  String? bonus;
  String? accumulateWeight;
  String? statusColor;

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
      this.accountName,
      this.idSchemeAccount,
      this.idScheme,
      this.idBranch,
      this.idPayGateway,
      this.paymentStatus,
      this.taxId,
      this.createdBy,
      this.updatedBy,
      this.cancelledBy,
      this.idCustomer,
      this.cancel,
      this.bonus,
      this.accumulateWeight,
      this.statusColor});

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
    accountName = json['account_name'];
    idSchemeAccount = json['id_scheme_account'];
    idScheme = json['id_scheme'];
    idBranch = json['id_branch'];
    idPayGateway = json['id_payGateway'];
    paymentStatus = json['payment_status'];
    taxId = json['tax_id'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    cancelledBy = json['cancelled_by'];
    idCustomer = json['id_customer'];
    cancel = json['cancel'];
    bonus = json['bonus'];
    accumulateWeight = json['accumulate_weight'];
    statusColor = json['status_color'];
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
    data['account_name'] = this.accountName;
    data['id_scheme_account'] = this.idSchemeAccount;
    data['id_scheme'] = this.idScheme;
    data['id_branch'] = this.idBranch;
    data['id_payGateway'] = this.idPayGateway;
    data['payment_status'] = this.paymentStatus;
    data['tax_id'] = this.taxId;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['cancelled_by'] = this.cancelledBy;
    data['id_customer'] = this.idCustomer;
    data['cancel'] = this.cancel;
    data['bonus'] = this.bonus;
    data['accumulate_weight'] = this.accumulateWeight;
    data['status_color'] = this.statusColor;
    return data;
  }
}
