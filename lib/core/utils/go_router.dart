import 'package:cinemax_app/core/utils/bloc_provieders_views/newst_provieder.dart';
import 'package:cinemax_app/core/utils/bloc_provieders_views/search_provider.dart';
import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/initial_auth_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/new_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/reset_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_in_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_up_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/verify_account_view.dart';
import 'package:cinemax_app/features/home/data/repos/home_repo_impl.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';

import 'package:cinemax_app/features/home/domian/uses_cases/fetch_movie_details.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';

import 'package:cinemax_app/features/home/presentaion/views_models/views/see_all_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/youtube_player.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/page_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_details_view.dart';
import 'package:cinemax_app/features/search/data/repos/search_repo_impl.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_actor_use_case.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_actor_cubit/seach_actor_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/views/search_actors_view.dart';
import 'package:cinemax_app/features/splash/presentaion/views_models/views/splash_view.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String kOnBoarding1 = '/onboarding1';
  static const String kInitialAuth = '/initailauth';
  static const String kSignUpView = '/signupview';
  static const String kSignInView = '/signInview';
  static const String kResetPasswordView = '/resetpasswordview';
  static const String kNewPasswordView = '/newpasswordview';
  static const String kVerficationView = '/verificationview';
  static const String kSearchView = '/searchview';
  static const String kHomeview = '/homeview';
  static const String kDetailView = '/detailview';
  static const String kWishListView = '/wishlistview';
  static const String kYoutubePlayer = '/youtubePlayerVideo';
  static const String kSeeAllView = '/seeAllview';
  static const String kActorSearchView = '/actorSearchview';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeview,
      builder: (context, state) => const NewstMoiveProvider(),
    ),
    GoRoute(
      path: kOnBoarding1,
      builder: (context, state) => const OnBoardingTransistion(),
    ),
    GoRoute(
      path: kInitialAuth,
      builder: (context, state) => const InitialAuthView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: kNewPasswordView,
      builder: (context, state) => const NewPasswordView(),
    ),
    GoRoute(
      path: kVerficationView,
      builder: (context, state) => const VerifyAccountView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchMultiProviders(),
    ),
    GoRoute(
      path: kDetailView,
      builder: (context, state) => BlocProvider(
        create: (context) => FetchMovieDetailsCubit(
          FetchMovieDetailsUseCase(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
        ),
        child: MovieDetailsView(
          movieEntity: state.extra as int,
        ),
      ),
    ),
    GoRoute(
      path: kWishListView,
      builder: (context, state) => const WishListView(),
    ),
    GoRoute(
      path: kYoutubePlayer,
      builder: (context, state) => YoutubeVideoPlayer(
        movieDetailsEntity: state.extra as MovieDetailsEntity,
      ),
    ),
    GoRoute(
      path: kSeeAllView,
      builder: (context, state) => SeeAllView(
        movieEntity: state.extra as List<MovieEntity>,
      ),
    ),
    GoRoute(
      path: kActorSearchView,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchActorCubit(
            SearchActorUseCase(searchRepo: getIt.get<SearchRepoImpl>())),
        child: const SearchActorsView(),
      ),
    ),
  ]);
}
