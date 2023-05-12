class UserModel {
  String? name;
  int? monthlyExpense;

  double? eatPercentage;
  double? snackPercentage;
  double? passionPercentage;
  double? savingPercentage;

  UserModel.withParameter({
    required this.name,
    required this.monthlyExpense,
    required this.eatPercentage,
    required this.snackPercentage,
    required this.passionPercentage,
    required this.savingPercentage,
  });

  UserModel({
    this.name = 'Anonymous',
    this.monthlyExpense    = 2500000,
    this.eatPercentage     = 30,
    this.snackPercentage   = 10,
    this.passionPercentage = 20,
    this.savingPercentage  = 40,
  });

  Map<String, dynamic> toJson() {
    return {
      "username": this.name,
      "monthly expense": this.monthlyExpense,
      "eat percentage": this.eatPercentage,
      "snack percentage": this.snackPercentage,
      "passion percentage": this.passionPercentage,
      "saving percentage": this.savingPercentage,
    };
  }

}
