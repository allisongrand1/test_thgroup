// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'AssetType') required String assetType,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'CIK') required String cik,
    @JsonKey(name: 'Exchange') required String exchange,
    @JsonKey(name: 'Currency') required String currency,
    @JsonKey(name: 'Country') required String country,
    @JsonKey(name: 'Sector') required String sector,
    @JsonKey(name: 'Industry') required String industry,
    @JsonKey(name: 'Address') required String address,
    @JsonKey(name: 'FiscalYearEnd') required String fiscalYearEnd,
    @JsonKey(name: 'LatestQuarter') required String latestQuarter,
    @JsonKey(name: 'MarketCapitalization') required String marketCapitalization,
    @JsonKey(name: 'EBITDA') required String ebitda,
    @JsonKey(name: 'PERatio') required String peratio,
    @JsonKey(name: 'PEGRatio') required String pegratio,
    @JsonKey(name: 'BookValue') required String bookvalue,
    @JsonKey(name: 'DividendPerShare') required String dividendpershare,
    @JsonKey(name: 'DividendYield') required String dividendYield,
    @JsonKey(name: 'EPS') required String eps,
    @JsonKey(name: 'RevenuePerShareTTM') required String revenuePerShareTTM,
    @JsonKey(name: 'ProfitMargin') required String profitMargin,
    @JsonKey(name: 'OperatingMarginTTM') required String operatingMarginTTM,
    @JsonKey(name: 'ReturnOnAssetsTTM') required String returnOnAssetsTTM,
    @JsonKey(name: 'ReturnOnEquityTTM') required String returnOnEquityTTM,
    @JsonKey(name: 'RevenueTTM') required String revenueTTM,
    @JsonKey(name: 'GrossProfitTTM') required String grossProfitTTM,
    @JsonKey(name: 'DilutedEPSTTM') required String dilutedEPSTTM,
    @JsonKey(name: 'QuarterlyEarningsGrowthYOY')
        required String quarterlyEarningsGrowthYOY,
    @JsonKey(name: 'QuarterlyRevenueGrowthYOY')
        required String quarterlyRevenueGrowthYOY,
    @JsonKey(name: 'AnalystTargetPrice') required String analystTargetPrice,
    @JsonKey(name: 'TrailingPE') required String trailingPE,
    @JsonKey(name: 'ForwardPE') required String forwardPE,
    @JsonKey(name: 'PriceToSalesRatioTTM') required String priceToSalesRatioTTM,
    @JsonKey(name: 'PriceToBookRatio') required String priceToBookRatio,
    @JsonKey(name: 'EVToRevenue') required String evToRevenue,
    @JsonKey(name: 'EVToEBITDA') required String evToEBITDA,
    @JsonKey(name: 'Beta') required String beta,
    @JsonKey(name: '52WeekHigh') required String week52High,
    @JsonKey(name: '52WeekLow') required String week52Low,
    @JsonKey(name: '50DayMovingAverage') required String day50MovingAverage,
    @JsonKey(name: '200DayMovingAverage') required String day200MovingAverage,
    @JsonKey(name: 'SharesOutstanding') required String sharesOutstanding,
    @JsonKey(name: 'DividendDate') required String dividendDate,
    @JsonKey(name: 'ExDividendDate') required String exDividendDate,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
