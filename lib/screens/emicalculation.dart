import 'dart:math';

double emiCalculator(
  {double amountEligible=0, double tenure=0, double interestrate=0}){
    double emi=0.0;
    double interest=(interestrate/100)/ tenure;
    emi=(amountEligible *pow((1+interest),tenure)) /((pow(1+interest, tenure)) -1);
    return emi;
}