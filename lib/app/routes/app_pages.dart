import 'package:get/get.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/accountDelete/bindings/account_delete_binding.dart';
import '../modules/accountDelete/views/account_delete_view.dart';
import '../modules/bookmark/bindings/bookmark_binding.dart';
import '../modules/bookmark/views/bookmark_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/chatDetails/bindings/chat_details_binding.dart';
import '../modules/chatDetails/views/chat_details_view.dart';
import '../modules/communityLeagal/bindings/community_leagal_binding.dart';
import '../modules/communityLeagal/views/community_leagal_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/gigs/bindings/gigs_binding.dart';
import '../modules/gigs/views/gigs_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/logoDesignList/bindings/logo_design_list_binding.dart';
import '../modules/logoDesignList/views/logo_design_list_view.dart';
import '../modules/mail/bindings/mail_binding.dart';
import '../modules/mail/views/mail_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/orderComplaints/bindings/order_complaints_binding.dart';
import '../modules/orderComplaints/views/order_complaints_view.dart';
import '../modules/orderDetails/bindings/order_details_binding.dart';
import '../modules/orderDetails/views/order_details_view.dart';
import '../modules/orderSuccess/bindings/order_success_binding.dart';
import '../modules/orderSuccess/views/order_success_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/productDetail/bindings/product_detail_binding.dart';
import '../modules/productDetail/views/product_detail_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/provider/providerEarning/bindings/provider_earning_binding.dart';
import '../modules/provider/providerEarning/views/provider_earning_view.dart';
import '../modules/provider/providerPage/bindings/provider_page_binding.dart';
import '../modules/provider/providerPage/views/provider_page_view.dart';
import '../modules/provider/providerProfile/bindings/provider_profile_binding.dart';
import '../modules/provider/providerProfile/views/provider_profile_view.dart';
import '../modules/savedList/bindings/saved_list_binding.dart';
import '../modules/savedList/views/saved_list_view.dart';
import '../modules/savedListDetails/bindings/saved_list_details_binding.dart';
import '../modules/savedListDetails/views/saved_list_details_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/seller/bindings/seller_binding.dart';
import '../modules/seller/views/seller_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/subcategory/bindings/subcategory_binding.dart';
import '../modules/subcategory/views/subcategory_view.dart';
import '../modules/termsServeice/bindings/terms_serveice_binding.dart';
import '../modules/termsServeice/views/terms_serveice_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ORDER_SUCCESS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.MAIL,
      page: () => const MailView(),
      binding: MailBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARK,
      page: () => const BookmarkView(),
      binding: BookmarkBinding(),
    ),
    GetPage(
      name: _Paths.SUBCATEGORY,
      page: () => const SubcategoryView(),
      binding: SubcategoryBinding(),
    ),
    GetPage(
      name: _Paths.LOGO_DESIGN_LIST,
      page: () => const LogoDesignListView(),
      binding: LogoDesignListBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_DETAILS,
      page: () => const ChatDetailsView(),
      binding: ChatDetailsBinding(),
    ),
    GetPage(
      name: _Paths.PROVIDER_PROFILE,
      page: () => const ProviderProfileView(),
      binding: ProviderProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROVIDER_PAGE,
      page: () => const ProviderPageView(),
      binding: ProviderPageBinding(),
    ),
    GetPage(
      name: _Paths.PROVIDER_EARNING,
      page: () => const ProviderEarningView(),
      binding: ProviderEarningBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAILS,
      page: () => const OrderDetailsView(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => const ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_COMPLAINTS,
      page: () => const OrderComplaintsView(),
      binding: OrderComplaintsBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_SUCCESS,
      page: () => const OrderSuccessView(),
      binding: OrderSuccessBinding(),
    ),
    GetPage(
      name: _Paths.SAVED_LIST,
      page: () => const SavedListView(),
      binding: SavedListBinding(),
    ),
    GetPage(
      name: _Paths.SAVED_LIST_DETAILS,
      page: () => const SavedListDetailsView(),
      binding: SavedListDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_DELETE,
      page: () => const AccountDeleteView(),
      binding: AccountDeleteBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY_LEAGAL,
      page: () => const CommunityLeagalView(),
      binding: CommunityLeagalBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_SERVEICE,
      page: () => const TermsServeiceView(),
      binding: TermsServeiceBinding(),
    ),
    GetPage(
      name: _Paths.SELLER,
      page: () => const SellerView(),
      binding: SellerBinding(),
    ),
    GetPage(
      name: _Paths.GIGS,
      page: () => const GigsView(),
      binding: GigsBinding(),
    ),
  ];
}
