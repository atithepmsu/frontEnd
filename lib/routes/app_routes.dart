import 'package:flutter/material.dart';
import 'package:shode/presentation/item_availability_screen/item_availability_screen.dart';
import 'package:shode/presentation/invoice_billing_screen/invoice_billing_screen.dart';
import 'package:shode/presentation/discounts_offers_screen/discounts_offers_screen.dart';
import 'package:shode/presentation/order_detail_view_screen/order_detail_view_screen.dart';
import 'package:shode/presentation/pricing_engine_screen/pricing_engine_screen.dart';
import 'package:shode/presentation/payments_screen/payments_screen.dart';
import 'package:shode/presentation/guest_login_screen/guest_login_screen.dart';
import 'package:shode/presentation/refund_management_screen/refund_management_screen.dart';
import 'package:shode/presentation/product_quickview_screen/product_quickview_screen.dart';
import 'package:shode/presentation/shopping_cart_screen/shopping_cart_screen.dart';
import 'package:shode/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:shode/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:shode/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:shode/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String itemAvailabilityScreen = '/item_availability_screen';

  static const String invoiceBillingScreen = '/invoice_billing_screen';

  static const String discountsOffersScreen = '/discounts_offers_screen';

  static const String orderDetailViewScreen = '/order_detail_view_screen';

  static const String pricingEngineScreen = '/pricing_engine_screen';

  static const String paymentsScreen = '/payments_screen';

  static const String guestLoginScreen = '/guest_login_screen';

  static const String refundManagementScreen = '/refund_management_screen';

  static const String productQuickviewScreen = '/product_quickview_screen';

  static const String shoppingCartScreen = '/shopping_cart_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    itemAvailabilityScreen: (context) => ItemAvailabilityScreen(),
    invoiceBillingScreen: (context) => InvoiceBillingScreen(),
    discountsOffersScreen: (context) => DiscountsOffersScreen(),
    orderDetailViewScreen: (context) => OrderDetailViewScreen(),
    pricingEngineScreen: (context) => PricingEngineScreen(),
    paymentsScreen: (context) => PaymentsScreen(),
    guestLoginScreen: (context) => GuestLoginScreen(),
    refundManagementScreen: (context) => RefundManagementScreen(),
    productQuickviewScreen: (context) => ProductQuickviewScreen(),
    shoppingCartScreen: (context) => ShoppingCartScreen(),
    wishlistScreen: (context) => WishlistScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    signUpScreen: (context) => SignUpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
