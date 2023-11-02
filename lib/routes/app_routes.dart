import 'package:flutter/material.dart';
import 'package:nicolas_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:nicolas_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:nicolas_s_application1/presentation/log_in_screen/log_in_screen.dart';
import 'package:nicolas_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:nicolas_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:nicolas_s_application1/presentation/cards_screen/cards_screen.dart';
import 'package:nicolas_s_application1/presentation/card_details_screen/card_details_screen.dart';
import 'package:nicolas_s_application1/presentation/activity_screen/activity_screen.dart';
import 'package:nicolas_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:nicolas_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:nicolas_s_application1/presentation/history_screen/history_screen.dart';
import 'package:nicolas_s_application1/presentation/notifications_screen/notifications_screen.dart';
import 'package:nicolas_s_application1/presentation/send_money_screen/send_money_screen.dart';
import 'package:nicolas_s_application1/presentation/enter_money_screen/enter_money_screen.dart';
import 'package:nicolas_s_application1/presentation/send_money_enter_password_screen/send_money_enter_password_screen.dart';
import 'package:nicolas_s_application1/presentation/add_person_screen/add_person_screen.dart';
import 'package:nicolas_s_application1/presentation/add_card_one_screen/add_card_one_screen.dart';
import 'package:nicolas_s_application1/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:nicolas_s_application1/presentation/receive_money_request_tab_container_screen/receive_money_request_tab_container_screen.dart';
import 'package:nicolas_s_application1/presentation/request_sent_screen/request_sent_screen.dart';
import 'package:nicolas_s_application1/presentation/money_exchange_screen/money_exchange_screen.dart';
import 'package:nicolas_s_application1/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:nicolas_s_application1/presentation/electric_bill_screen/electric_bill_screen.dart';
import 'package:nicolas_s_application1/presentation/bil_payment_success_screen/bil_payment_success_screen.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_one_screen/bank_to_bank_one_screen.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_two_screen/bank_to_bank_two_screen.dart';
import 'package:nicolas_s_application1/presentation/bank_to_bank_three_screen/bank_to_bank_three_screen.dart';
import 'package:nicolas_s_application1/presentation/money_sent_success_screen/money_sent_success_screen.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_one_screen/mobile_prepaid_one_screen.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_two_screen/mobile_prepaid_two_screen.dart';
import 'package:nicolas_s_application1/presentation/mobile_prepaid_three_screen/mobile_prepaid_three_screen.dart';
import 'package:nicolas_s_application1/presentation/recharge_success_screen/recharge_success_screen.dart';
import 'package:nicolas_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String cardsScreen = '/cards_screen';

  static const String cardDetailsScreen = '/card_details_screen';

  static const String activityScreen = '/activity_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String historyScreen = '/history_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String enterMoneyScreen = '/enter_money_screen';

  static const String sendMoneyEnterPasswordScreen =
      '/send_money_enter_password_screen';

  static const String addPersonScreen = '/add_person_screen';

  static const String addCardOneScreen = '/add_card_one_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String receiveMoneyPersonalPage = '/receive_money_personal_page';

  static const String receiveMoneyRequestPage = '/receive_money_request_page';

  static const String receiveMoneyRequestTabContainerScreen =
      '/receive_money_request_tab_container_screen';

  static const String requestSentScreen = '/request_sent_screen';

  static const String moneyExchangeScreen = '/money_exchange_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String electricBillScreen = '/electric_bill_screen';

  static const String bilPaymentSuccessScreen = '/bil_payment_success_screen';

  static const String bankToBankOneScreen = '/bank_to_bank_one_screen';

  static const String bankToBankTwoScreen = '/bank_to_bank_two_screen';

  static const String bankToBankThreeScreen = '/bank_to_bank_three_screen';

  static const String moneySentSuccessScreen = '/money_sent_success_screen';

  static const String mobilePrepaidOneScreen = '/mobile_prepaid_one_screen';

  static const String mobilePrepaidTwoScreen = '/mobile_prepaid_two_screen';

  static const String mobilePrepaidThreeScreen = '/mobile_prepaid_three_screen';

  static const String rechargeSuccessScreen = '/recharge_success_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        logInScreen: LogInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        cardsScreen: CardsScreen.builder,
        cardDetailsScreen: CardDetailsScreen.builder,
        activityScreen: ActivityScreen.builder,
        profileScreen: ProfileScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        historyScreen: HistoryScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        sendMoneyScreen: SendMoneyScreen.builder,
        enterMoneyScreen: EnterMoneyScreen.builder,
        sendMoneyEnterPasswordScreen: SendMoneyEnterPasswordScreen.builder,
        addPersonScreen: AddPersonScreen.builder,
        addCardOneScreen: AddCardOneScreen.builder,
        paymentSuccessScreen: PaymentSuccessScreen.builder,
        receiveMoneyRequestTabContainerScreen:
            ReceiveMoneyRequestTabContainerScreen.builder,
        requestSentScreen: RequestSentScreen.builder,
        moneyExchangeScreen: MoneyExchangeScreen.builder,
        payBillScreen: PayBillScreen.builder,
        electricBillScreen: ElectricBillScreen.builder,
        bilPaymentSuccessScreen: BilPaymentSuccessScreen.builder,
        bankToBankOneScreen: BankToBankOneScreen.builder,
        bankToBankTwoScreen: BankToBankTwoScreen.builder,
        bankToBankThreeScreen: BankToBankThreeScreen.builder,
        moneySentSuccessScreen: MoneySentSuccessScreen.builder,
        mobilePrepaidOneScreen: MobilePrepaidOneScreen.builder,
        mobilePrepaidTwoScreen: MobilePrepaidTwoScreen.builder,
        mobilePrepaidThreeScreen: MobilePrepaidThreeScreen.builder,
        rechargeSuccessScreen: RechargeSuccessScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
