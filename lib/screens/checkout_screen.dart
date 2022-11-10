import 'dart:io';
import 'package:apple_pay_module/constants/color_constants.dart';
import 'package:apple_pay_module/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart' as pay;
import '../model/items_data_model.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _paymentItems = [
    const pay.PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: pay.PaymentItemStatus.final_price,
    )
  ];

  Future<void> onGooglePayResult(paymentResult) async {}
  void onApplePayResult(paymentResult) {
    debugPrint(paymentResult.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstants.lightGreyColor,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18,
              ),
              title: const Text(StringConstant.securePay,
                  style: TextStyle(
                      fontFamily: StringConstant.textFontName,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black)),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    StringConstant.secureImg,
                    height: 50,
                    width: 60,
                  ),
                )
              ]),
          bottomNavigationBar: buildBottomNavigation(),
          body: buildBody()),
    );
  }

  Widget buildBottomNavigation() {
    return SizedBox(
      height: 90,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    StringConstant.upImg,
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text(StringConstant.total,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black)),
                        Text(StringConstant.amt,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black))
                      ],
                    ),
                  ),
                  Platform.isIOS
                      ? pay.ApplePayButton(
                          paymentConfigurationAsset:
                              StringConstant.appleJsonName,
                          paymentItems: _paymentItems,
                          style: pay.ApplePayButtonStyle.black,
                          type: pay.ApplePayButtonType.buy,
                          margin: const EdgeInsets.only(top: 15.0),
                          onPaymentResult: onApplePayResult,
                          loadingIndicator: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : pay.GooglePayButton(
                          paymentConfigurationAsset:
                              StringConstant.gpayJsonName,
                          paymentItems: _paymentItems,
                          type: pay.GooglePayButtonType.pay,
                          margin: const EdgeInsets.only(top: 15.0),
                          onPaymentResult: onGooglePayResult,
                          loadingIndicator: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                ],
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: StringConstant.finalStep,
                    style: TextStyle(
                        fontFamily: StringConstant.textFontName,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: ColorConstants.darkGreyColor)),
                TextSpan(
                    text: StringConstant.payNow,
                    style: TextStyle(
                        fontFamily: StringConstant.textFontName,
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: ColorConstants.darkGreyColor)),
                TextSpan(
                    text: StringConstant.btnTransaction,
                    style: TextStyle(
                        fontFamily: StringConstant.textFontName,
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: ColorConstants.darkGreyColor))
              ])),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FractionallySizedBox(
                widthFactor: 0.85,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(StringConstant.shipping,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black)),
                        Text(StringConstant.addEdit,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: ColorConstants.blueColor))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.lightGreyColor,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Text(StringConstant.banu,
                                  style: TextStyle(
                                      fontFamily: StringConstant.textFontName,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.black)),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(StringConstant.order,
                                          style: TextStyle(
                                              fontFamily:
                                                  StringConstant.textFontName,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.black)),
                                      Text(StringConstant.phoneNumber,
                                          style: TextStyle(
                                              fontFamily:
                                                  StringConstant.textFontName,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.black))
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(StringConstant.address,
                                      style: TextStyle(
                                          fontFamily:
                                              StringConstant.textFontName,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black)),
                                  Text(StringConstant.addresses,
                                      style: TextStyle(
                                          fontFamily:
                                              StringConstant.textFontName,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: const [
                        Text(StringConstant.billingAddress,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FractionallySizedBox(
                widthFactor: 0.85,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(StringConstant.payment,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.black)),
                        Text(StringConstant.addEdit,
                            style: TextStyle(
                                fontFamily: StringConstant.textFontName,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: ColorConstants.blueColor))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorConstants.lightGreyColor,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FractionallySizedBox(
                          widthFactor: 0.85,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.zero,
                                    //color: Colors.amber,
                                    child: Image.asset(
                                      StringConstant.creditImg,
                                      height: 30,
                                      width: 33,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    child: Text(StringConstant.addCredit,
                                        style: TextStyle(
                                            fontFamily:
                                                StringConstant.textFontName,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Colors.black)),
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConstant.cardHolder,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .darkGreyColor)),
                                          const Text(StringConstant.banu,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConstant.cardNo,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .darkGreyColor)),
                                          const Text(StringConstant.cardNos,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      StringConstant.master,
                                      height: 50,
                                      width: 50,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  alignment: Alignment.topLeft,
                                  child: const Text(StringConstant.expireDate,
                                      style: TextStyle(
                                          fontFamily:
                                              StringConstant.textFontName,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.black))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConstant.month,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .darkGreyColor)),
                                          const Text(StringConstant.date,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConstant.year,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .darkGreyColor)),
                                          const Text(StringConstant.years,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(StringConstant.securityCode,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11,
                                                  color: ColorConstants
                                                      .darkGreyColor)),
                                          const Text(
                                              StringConstant.securityCodes,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Container(
                                        alignment: Alignment.topLeft,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Image.asset(
                                          StringConstant.infoImg,
                                          width: 25,
                                          height: 25,
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Row(
                                children: const [
                                  Text(StringConstant.remember,
                                      style: TextStyle(
                                          fontFamily:
                                              StringConstant.textFontName,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black)),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FractionallySizedBox(
                widthFactor: 0.84,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(StringConstant.items2,
                              style: TextStyle(
                                  fontFamily: StringConstant.textFontName,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black)),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: ColorConstants.amberTypeColor),
                            child: const Text(StringConstant.arrivalDate,
                                style: TextStyle(
                                    fontFamily: StringConstant.textFontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            ItemDataModel data = dataList[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: ColorConstants.lightGreyColor)),
                                child: ListTile(
                                  leading: Image.asset(data.image ?? ""),
                                  title: Text(data.title ?? "",
                                      style: const TextStyle(
                                          fontFamily:
                                              StringConstant.textFontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          color: Colors.black)),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(StringConstant.color,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black)),
                                          Text(data.colorText ?? "",
                                              style: const TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black))
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Text(StringConstant.size,
                                              style: TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black)),
                                          Text(data.size ?? "",
                                              style: const TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black))
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Text(StringConstant.qty,
                                                  style: TextStyle(
                                                      fontFamily: StringConstant
                                                          .textFontName,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      color: Colors.black)),
                                              Text(data.qty ?? "",
                                                  style: const TextStyle(
                                                      fontFamily: StringConstant
                                                          .textFontName,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                      color: Colors.black))
                                            ],
                                          ),
                                          Text(data.amount ?? "",
                                              style: const TextStyle(
                                                  fontFamily: StringConstant
                                                      .textFontName,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.black))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
